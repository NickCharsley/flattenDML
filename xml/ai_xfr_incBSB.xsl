<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xsl:param name="table">HHO</xsl:param>
<xsl:output method="html" indent="no"/>

<xsl:template match="xs:element" mode="table">
  <xsl:text>
out::reformat(in)
// Reformat </xsl:text>
  <xsl:value-of select="@name"/>
  <xsl:text>
  out.* :: in.*;
  out.* :1: in.audit.*;</xsl:text>
<xsl:apply-templates select='xs:complexType/xs:sequence/xs:element' mode='fields'/>
<xsl:text>
end;</xsl:text>
</xsl:template>

<xsl:template match="xs:element[@name='MAIN']" mode='table' />
<xsl:template match="xs:element[@name='CUGMEMB']" mode='table' />
<xsl:template match="xs:element[@name='APPLSUMMARY']" mode='table' />
<xsl:template match="xs:element[@name='PUBLIC']" mode='table' />
<xsl:template match="xs:element[@name='ER']" mode='table' />
<xsl:template match="xs:element[@name='SCORE']" mode='table' />
<xsl:template match="xs:element[@name='FULL']" mode='table' />
<xsl:template match="xs:element[@name='PARTIAL']" mode='table' />
<xsl:template match="xs:element[@name='OWN']" mode='table' />
<xsl:template match="xs:element[@name='CIFAS']" mode='table' />
<xsl:template match="xs:element[@name='SEARCH']" mode='table' />
<xsl:template match="xs:element[@name='ADDRLINK']" mode='table' />
<xsl:template match="xs:element[@name='ACD']" mode='table' />

<xsl:template match="xs:element[@name='ASSLINK']" mode='fields' />
<xsl:template match="xs:element[@name='CAMEO2006']" mode='fields' />
<xsl:template match="xs:element[@name='GEORISK2006']" mode='fields' />
<xsl:template match="xs:element[@name='HHO']" mode='fields' />
<xsl:template match="xs:element[@name='ICH']" mode='fields' />
<xsl:template match="xs:element[@name='ID']" mode='fields' />
<xsl:template match="xs:element[@name='SPA']" mode='fields' />
<xsl:template match="xs:element[@name='USF']" mode='fields' />
<xsl:template match="xs:element[@name='OIA']" mode='fields' />

<xsl:template match="xs:element" mode='fields'>
  <xsl:text>
//</xsl:text>
  <xsl:value-of select="@name"/>
  <xsl:apply-templates select='xs:complexType/xs:attribute'/>
  <xsl:apply-templates select='xs:complexType/xs:sequence/xs:element' mode='fields'/>
</xsl:template>

<xsl:template match="xs:attribute" >
  <xsl:apply-templates select="xs:simpleType/*"/>
</xsl:template>


<xsl:template mode="parentName" match="xs:attribute">
  <xsl:apply-templates mode="parentName" select="parent::*/parent::*"/>
  <xsl:text>.</xsl:text>
  <xsl:value-of select="@name"/>
</xsl:template>

<xsl:template mode="parentName" match="xs:element">
  <xsl:choose>
    <xsl:when test="@name='OVERALL'"/>
    <xsl:when test="@name='APPLICANT'"/>  
    <xsl:otherwise>
      <xsl:apply-templates mode="parentName" select="parent::*/parent::*/parent::*"/>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:text>.</xsl:text>
  <xsl:value-of select="@name"/>
</xsl:template>

<xsl:template match="xs:attribute[@type='xs:string']" >
  <xsl:text>
  out.</xsl:text><xsl:value-of select="@name"/>
  <xsl:text> :: in</xsl:text>
  <xsl:apply-templates mode="parentName" select="."/>
  <xsl:text>;</xsl:text>
</xsl:template>


<xsl:template match="xs:union">
  <xsl:text>
  out.</xsl:text><xsl:value-of select="../../@name"/>
  <xsl:text> :: </xsl:text>  
  <xsl:choose>
    <xsl:when test="@memberTypes='ST_defaults ST_bit'">
      <xsl:text>(int(4))((decimal('\0'))callCreditDefaults(in</xsl:text>
      <xsl:apply-templates mode="parentName" select="../.."/>
      <xsl:text>))</xsl:text>
    </xsl:when>
    <xsl:when test="@memberTypes='ST_defaults xs:double'">decimal('\0')</xsl:when>
      <xsl:when test="@memberTypes='ST_defaults xs:token'">string('\0')</xsl:when>
    <xsl:when test="@memberTypes='ST_defaults xs:date'">
      <xsl:text>callCreditDateDefaults(in</xsl:text>
      <xsl:apply-templates mode="parentName" select="../.."/>
      <xsl:text>);
  </xsl:text>
      <xsl:text>out.</xsl:text>      
      <xsl:value-of select="../../@name"/><xsl:text>_default :: callCreditDateDefaultTypes(in</xsl:text>
      <xsl:apply-templates mode="parentName" select="../.."/>
      <xsl:text>);</xsl:text>
      </xsl:when>
      <xsl:when test="@memberTypes='ST_defaults'">
      <xsl:apply-templates select="xs:simpleType/*"/>
      </xsl:when>
    </xsl:choose>
    <xsl:text>;</xsl:text>
  </xsl:template>

<xsl:template match="xs:restriction">
  <xsl:choose>
    <xsl:when test="@base='xs:int'">
      <xsl:text>(int(4))((decimal('\0'))callCreditDefaults(in</xsl:text>
      <xsl:apply-templates mode="parentName" select="../../../.."/>
      <xsl:text>))</xsl:text>
    </xsl:when>  
    <xsl:when test="@base='xs:string'">string('\0')</xsl:when>
  </xsl:choose>
</xsl:template>

<xsl:template match="/">
  <xsl:apply-templates select='/xs:schema/xs:complexType/xs:sequence/xs:element[@name=$table]' mode="table"/>
  <xsl:apply-templates select='/xs:schema/xs:complexType/xs:sequence/xs:element/xs:complexType/xs:sequence/xs:element[@name!="OIA"][@name=$table]' mode="table"/>
  <xsl:apply-templates select='/xs:schema/xs:complexType/xs:sequence/xs:element/xs:complexType/xs:sequence/xs:element[@name="OIA"]/xs:complexType/xs:sequence/xs:element[@name=$table]' mode="table"/>
</xsl:template>
</xsl:stylesheet>