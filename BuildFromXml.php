<?php

namespace vanquis;

class BuildFromXml
{
    private $xmlFilename;
    private $xslFilename;
    
    public function __construct($xmlFilename, $xslFilename = "")
    {
        if (\substr($xmlFilename, -4, 1) != ".") {
            $xmlFilename.='.xml';
        }
        if ($xslFilename == "") {
            $xslFilename= substr($xmlFilename, 0, -4);
        }
        if (\substr($xslFilename, -4) != ".xsl") {
            $xslFilename.='.xsl';
        }
        $this->xmlFilename=$xmlFilename;
        $this->xslFilename=$xslFilename;
    }
    
    public function process()
    {
        // Load the XML source
        $xml = new \DOMDocument;
        $xml->load($this->xmlFilename);

        $xsl = new \DOMDocument;
        $xsl->load($this->xslFilename);

        // Configure the transformer
        $proc = new \XSLTProcessor;
        $proc->importStyleSheet($xsl); // attach the xsl rules

        return $proc->transformToXML($xml);
    }
}
