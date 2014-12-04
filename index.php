<?php

namespace vanquis;

class Flatern
{
    private $types=[
        "decimal('\\0')"=>"decimal('\\0')",
        "string('\\0')"=>"string('\\0')",
        "string_t"=>"string('\\0')",
        "ST_guid_t" => "string('\\0')",
        "int_t" =>"decimal('\\0')",
        "dateTime_t" => "datetime('YYYY-MM-DDTHH24:MI:SS')",
        "ST_yourreference_t" => "string('\\0')",
        "unsignedInt_t" => "decimal('\\0')",
    ];

    private $file;
    private $parents=[];
    private $dir;

    private function removeComments($data)
    {
        $lines = explode("\n", $data);
        
        for ($i=0; $i<count($lines); $i++) {
            if (!(strpos($lines[$i], "//")===false)) {
                $lines[$i]=trim(substr($lines[$i], 0, strpos($lines[$i], "//")));
                if (!strlen($lines[$i])) {
                    unset($lines[$i]);
                }
            }
        }
        return join("\n", $lines);
    }
    
    public function __construct($dir, $dml, $root, $rootField, $parent = [])
    {
        print "Type $root\n";
        if (count($parent)==0) {
            chdir($dir);
        }
        $this->dir=$dir;
        $this->file =  $this->removeComments(file_get_contents("$dir/$dml"));
        //$parent[$rootField."_index"]=["decimal('\\0')", 'NULL'];

        $this->parents=$parent;
        
        @mkdir($root);
        chdir($root);
        
        $start=strpos($this->file, "type $root ");
        $end =strpos($this->file, 'end;', $start)+4;
        $fields=array_merge(
            [
                'searchid'=>["string('\\0')", 'NULL'],
                'searchdate'=>['datetime("YYYY-MM-DDTHH24:MI:SS")', 'NULL'],
                'request_time'=>['datetime("YYYYMMDDHH24MISS")', 'NULL'],
                'yourreference'=>["string('\\0')", 'NULL']
            ],
            $parent,
            $this->getFields(substr($this->file, $start, $end-$start))
        );
        
        $this->saveFields($root, $fields, $rootField);
        
        chdir('..');
        @rmdir($root);
    }

    private function saveFields($root,$fields,$rootField){
        file_put_contents("$root.dml", $this->buildDML($fields));
        file_put_contents("$root.xfr", $this->buildTransform($rootField, $fields));
    }
    
    
    private function subTransform($root, $fields, $path = "")
    {
        $trans="";
        foreach ($fields as $name => $details) {
            switch ($name) {
                case 'request_time':
                    $trans.="\tout.request_time :: in.audit.request_time;\n";
                    break;
                case 'searchid':
                case 'searchdate':
                case 'yourreference':
                    $trans.="\tout.$name :: in.$name;\n";
                    break;
                default:                    
                    if (is_array($details[0])) {
                        $trans.=$this->subTransform("$root.$name", $details[0], ($path!=""?$path."_":"").$name);
                    } elseif (count($details)>2) {
                        $trans.="\tout.".($path!=""?$path."_":"").$name." :: in.$name;\n";
                    } else {
                        $trans.="\tout.".($path!=""?$path."_":"").$name." :: in.$root.$name;\n";
                    }
                    break;
            }
        }
        return $trans;
    }


    private function buildTransform($root, $fields)
    {
        $trans="out :: reformat(in) =\nbegin\n";
        $trans.=$this->subTransform($root, $fields);
        $trans.="end;\n";
        return $trans;
    }

    private function subDML($fields, $path = "")
    {
        $dml="";
        foreach ($fields as $name => $details) {
            if (is_array($details[0])) {
                $dml.=$this->subDML($details[0], ($path!=""?$path."_":"").$name);
            } else {

                $dml.="\t".$details[0]." ".($path!=""?$path."_":"").$name;
                if (count($details)>1) {
                    $dml.=" = NULL";
                }
                $dml.=";\n";
            }
        }
        return $dml;
    }

    private function buildDML($fields)
    {
        
        $dml ="record\n";
        $dml.=$this->subDML($fields);
        $dml.="end;\n";
        return $dml;
    }

    private function getFields($type)
    {
        $fields=[];
        $start=strpos($type, "record")+6;

        foreach (\explode(';', \substr($type, $start, -4)) as $line) {
            if (!strpos($line, 'x-ab-internal')) {
                if (strpos($line, '__')) {
                    continue;
                } elseif (!strpos($line, '[')) {
                    $field=explode(' ', trim($line));
                    if (count($field)>1) {
                        $fields[$field[1]]=[$this->getDMLType($field[0]),(count($field)>3?$field[3]:'')];
                    }
                } else {
                    $start=strpos($line, "[");
                    $end =strpos($line, ']')+1;
                    $type=trim(substr($line, 0, $start));
                    $var=trim(substr($line, $end));
                    print "Normalise --$type $var--\n";
                    
                    $parent=$this->parents;
                    $parent[$var."_index"]=["decimal('\\0')", 'NULL','noroot'];                    
                    
                    $dir=getcwd();
                    $f= new Flatern(
                        $this->dir,
                        "vblcc_Search07a-out.dml",
                        $type,
                        $var,
                        $parent
                    );
                    chdir($dir);
                }
            }
        }
        return $fields;
    }

    private $indent=1;
    
    private function getDMLType($type)
    {
        if (!array_key_exists($type, $this->types)) {
            print str_repeat("\t", $this->indent)."Find Type $type\n".str_repeat("\t", $this->indent)."[\n";
            $this->indent++;
            
            $start=strpos($this->file, "type $type ");
            if (!$start) {
                die;
            }
            $end =strpos($this->file, ';', $start);
            $def=substr($this->file, $start, $end-$start);

            if (strpos($def, 'record')) {
                $end =strpos($this->file, 'end;', $start);
                $def=substr($this->file, $start, $end-$start);
                $this->types[$type]= $this->getFields($def);
            } elseif (strpos($def, 'nillable')) {
                die("It's nillable [$def]");
            } else {
                $start=strpos($def, "=")+1;
                $this->types[$type]=trim(substr($def, $start));
            }
            $this->indent--;
            print str_repeat("\t", $this->indent)."]\n";
        }
        return $this->types[$type];
    }
}

    $dir="T:/Exchange/dmls/V2";
    chdir($dir);
/**/    
    //Applicant
    foreach ([
        'APPLSUMMARY',
        'ID',
        'PUBLIC',
        'ER',
        'SCORE',
        'FULL',
        'PARTIAL',
        'OWN',
        'CIFAS',
        'CAMEO2006',
        'SEARCH',
        'ADDRLINK',
        'ASSLINK',
        'GEORISK2006',
        'ICH',
        'ACD',
        'SPA',
        'USF',
        'HHO',
        ['OIA','OIADEC'],
        ['OIA','OIAUNDEC']        
    ] as $root) {
        chdir($dir);
        if (is_array($root)) {
            $rootTfx=join('.',$root);
            $rootType=array_pop($root)."_t";            
            $f[]= new Flatern($dir,"vblcc_Search07a-out.dml", $rootType, "Applicant.$rootTfx",["Applicant_index"=>["decimal('\\0')", 'NULL','noroot']]);
        } else {
            $f[]= new Flatern($dir,"vblcc_Search07a-out.dml", $root.'_t', "Applicant.".$root,["Applicant_index"=>["decimal('\\0')", 'NULL','noroot']]);
        }        
    }
/**/
    foreach ([
        'OVERALL'
    ] as $root) {
        if (is_array($root)) {
            $rootTfx=join('.',$root);
            $rootType=array_pop($root)."_t";            
            $f[]= new Flatern($dir,"vblcc_Search07a-out.dml", $rootType, $rootTfx);
        } else {
            $f[]= new Flatern($dir,"vblcc_Search07a-out.dml", $root.'_t', $root);
        }        
    }
/**/
$f[]= new Flatern($dir,"vblcc_Search07a-out.dml",'CT_searchrequest_t','creditrequest');
$f[]= new Flatern($dir,"vblcc_Search07a-out.dml",'CT_creditreport_t','creditreport');
$f[]= new Flatern($dir,"vblcc_Search07a-out.dml",'CT_apipicklist_t','picklist');
$f[]= new Flatern($dir,"vblcc_Search07a-out.dml",'CT_jobdetails_t', 'jobdetails');
$f[]= new Flatern($dir,"vblcc_Search07a-out.dml",'VanquisCustomData_t', 'VanquisCustomData');