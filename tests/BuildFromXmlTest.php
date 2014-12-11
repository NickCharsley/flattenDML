<?php

namespace vanquis\test;

use vanquis\BuildFromXml;

include '../BuildFromXml.php';

class StackTest extends \PHPUnit_Framework_TestCase
{
    public function testLoadXml()
    {
        $xml=new BuildFromXml('../xml/collection');
        $this->assertNotNull($xml);
        return $xml;
    }
    
    /**
     * @depends testLoadXml
     */
    public function testXslXml(BuildFromXml $xml)
    {
        $out="
  Hey! Welcome to Nicolas Eliaszewicz's sweet CD collection! 
  
 <h1>Fight for your mind</h1><h2>by Ben Harper - 1995</h2><hr>
 <h1>Electric Ladyland</h1><h2>by Jimi Hendrix - 1997</h2><hr>

";
        
        echo '['.$xml->process()."]";
        $this->assertEquals($out, $xml->process());
    }
    
    /**
     * 
     */
    public function testBSB()
    {
        $xml=new BuildFromXml('../xml/incBSB.xsd');
        
        $out="
  Hey! Welcome to Nicolas Eliaszewicz's sweet CD collection! 
  
 <h1>Fight for your mind</h1><h2>by Ben Harper - 1995</h2><hr>
 <h1>Electric Ladyland</h1><h2>by Jimi Hendrix - 1997</h2><hr>

";
        
        echo '['.$xml->process()."]";
        $this->assertEquals($out, $xml->process());
    }
}
