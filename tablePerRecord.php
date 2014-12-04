<?php

namespace vanquis;

class FlaternTPR
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
    
    public function __construct($dml, $root, $rootField, $parent = [])
    {
        print "Type $root\n";
        
        $this->file =  $this->removeComments(file_get_contents($dml));
        $parent[$rootField."_index"]=["decimal('\\0')", 'NULL'];

        $this->parents=$parent;
                
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
            $this->getFields(substr($this->file, $start, $end-$start), $root, [$rootField])
        );
        
        
        @rmdir($root);
        
//        $this->removeMTDir($root);
        
        //file_put_contents("$root.dml", $this->buildDML($fields));
        //file_put_contents("$root.xfr", $this->buildTransform($rootField, $fields));
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
                        $trans.=$this->subTransform(join('.', $root).".$name", $details[0], ($path!=""?$path."_":"").$name);
                    } elseif (strpos($name, '_index')) {
                        $trans.="\tout.".($path!=""?$path."_":"").$name." :: in.$name;\n";
                    } else {
                        $trans.="\tout.".($path!=""?$path."_":"").$name." :: in.".join('.', $root).".$name;\n";
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

    private function buildDML($root, $fields)
    {
        $dml ="record\n";
        $dml.=$this->subDML($fields);
        $dml.="end;\n";
        return $dml;
    }

    private function getFields($type, $root, $rootField)
    {
        $fields=[];
        $start=strpos($type, "record")+6;
        
        $leaf=true;
        @mkdir($root);
        chdir($root);

        foreach (\explode(';', \substr($type, $start, -4)) as $line) {
            if (!strpos($line, 'x-ab-internal')) {
                if (strpos($line, '__')) {
                    continue;
                } elseif (!strpos($line, '[')) {
                    $field=explode(' ', trim($line));
                    if (count($field)>1) {
                        $fields[$field[1]]=[$this->getDMLType($field[0], array_merge($rootField, [$field[1]]), $leaf),(\count($field)>3?$field[3]:'')];
                    }
                } else {
                    $start=strpos($line, "[");
                    $end =strpos($line, ']')+1;
                    $type=trim(substr($line, 0, $start));
                    $var=trim(substr($line, $end));
                    print "Normalise --$type $var--\n";
                    $dir=__DIR__.'/dml';
                    
                    $f= new FlaternTPR(
                        "$dir/vblcc_Search07a-out.dml",
                        $type,
                        $var,
                        $this->parents
                    );
                }
            }
        }
        if ($leaf) {
            $dml=array_merge(
                [
                    'searchid'=>["string('\\0')", 'NULL'],
                    'searchdate'=>['datetime("YYYY-MM-DDTHH24:MI:SS")', 'NULL'],
                    'request_time'=>['datetime("YYYYMMDDHH24MISS")', 'NULL'],
                    'yourreference'=>["string('\\0')", 'NULL']
                ],
                $this->parents,
                $fields
            );

            file_put_contents("$root.dml", $this->buildDML($rootField, $dml));
            file_put_contents("$root.xfr", $this->buildTransform($rootField, $dml));
        }
        chdir('..');
        
        return $fields;
    }

    private $indent=1;
    
    private function getDMLType($type, $rootField, &$leaf)
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
                $leaf=false;
                $end =strpos($this->file, 'end;', $start);
                $def=substr($this->file, $start, $end-$start);
                $this->types[$type]= $this->getFields($def, $type, $rootField);
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

    $dir="T:/Exchange/dmls";
    
    chdir($dir);
/*
    $f[]= new FlaternTPR("$dir/vblcc_Search07a-out.dml", 'CT_jobdetails_t', 'jobdetails');
    $f[]= new FlaternTPR("$dir/vblcc_Search07a-out.dml", 'CT_searchrequest_t', 'creditrequest');
    $f[]= new FlaternTPR("$dir/vblcc_Search07a-out.dml", 'CT_creditreport_t', 'creditreport');
    $f[]= new FlaternTPR("$dir/vblcc_Search07a-out.dml", 'VanquisCustomData_t', 'VanquisCustomData');

    $f[]= new FlaternTPR("$dir/vblcc_Search07a-out.dml", 'CT_bsbreport_t', 'BSB');
    $f[]= new FlaternTPR("$dir/vblcc_Search07a-out.dml", 'oia_t', 'oia');
///**/
    $f[]= new FlaternTPR("$dir/vblcc_Search07a-out.dml", 'APPLICANT_t', 'Applicant');
