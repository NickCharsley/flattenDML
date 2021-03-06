<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xsl:param name="schema">CallCredit</xsl:param>
<xsl:output method="html" indent="no"/>

<xsl:template match="xs:element" mode="table">
  IF OBJECT_ID('<xsl:value-of select="$schema"/>.BSB_<xsl:value-of select="@name"/>', 'U') IS NOT NULL
    DROP TABLE [<xsl:value-of select="$schema"/>].[BSB_<xsl:value-of select="@name"/>];
  go
  CREATE TABLE [<xsl:value-of select="$schema"/>].[BSB_<xsl:value-of select="@name"/>](
  [searchid] [uniqueidentifier] NOT NULL,
  [searchdate] [datetime] NULL,
  [request_time] [datetime] NULL,
  [yourreference] [varchar](40) NULL,<xsl:if test="@name!='OVERALL'">
  [Applicant_index] [int] NOT NULL,</xsl:if><xsl:apply-templates select='xs:complexType/xs:sequence/xs:element' mode='fields'/>
  );
  go
</xsl:template>

<xsl:template match="/xs:schema/xs:complexType/xs:sequence/xs:element/xs:complexType/xs:sequence/xs:element"  mode="table">
  IF OBJECT_ID('<xsl:value-of select="$schema"/>.BSB_APPLICANT_<xsl:value-of select="@name"/>', 'U') IS NOT NULL
    DROP TABLE [<xsl:value-of select="$schema"/>].[BSB_APPLICANT_<xsl:value-of select="@name"/>];
  go
  CREATE TABLE [<xsl:value-of select="$schema"/>].[BSB_APPLICANT_<xsl:value-of select="@name"/>](
  [searchid] [uniqueidentifier] NOT NULL,
  [searchdate] [datetime] NULL,
  [request_time] [datetime] NULL,
  [yourreference] [varchar](40) NULL,
  [Applicant_index] [decimal](18, 0) NOT NULL,<xsl:apply-templates select='xs:complexType/xs:sequence/xs:element' mode='fields'/>
  );
  go
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
  --<xsl:value-of select="@name"/>
<xsl:apply-templates select='xs:complexType/xs:attribute'/>
<xsl:apply-templates select='xs:complexType/xs:sequence/xs:element' mode='fields'/></xsl:template>

<xsl:template match="xs:attribute" >
  [<xsl:value-of select="@name"/>] <xsl:apply-templates select="xs:simpleType/*"/></xsl:template>

<xsl:template match="xs:attribute[@type='xs:string']" >
  [<xsl:value-of select="@name"/>] [varchar](10), --Default string </xsl:template>


<xsl:template match="xs:union"><xsl:choose>
  <xsl:when test="@memberTypes='ST_defaults ST_bit'">[int]</xsl:when>
  <xsl:when test="@memberTypes='ST_defaults xs:double'">[float]</xsl:when>
    <xsl:when test="@memberTypes='ST_defaults xs:token'">[varchar](100)</xsl:when>
  <xsl:when test="@memberTypes='ST_defaults xs:date'">[date],
  [<xsl:value-of select="../../@name"/>_default] [varchar](4),--and Default Type</xsl:when>
  <xsl:when test="@memberTypes='ST_defaults'"><xsl:apply-templates select="xs:simpleType/*"/></xsl:when>
</xsl:choose>, --<xsl:value-of select="@memberTypes"/></xsl:template>

<xsl:template name="charLen">
  <xsl:param name="length"/>
  <xsl:choose>
    <xsl:when test="$length>4"><xsl:value-of select="$length"/></xsl:when>
    <xsl:otherwise>4</xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template match="xs:restriction"><xsl:choose>
  <xsl:when test="@base='xs:int'">[int],</xsl:when>  
  <xsl:when test="@base='xs:string'">[varchar](<xsl:call-template name="charLen">
    <xsl:with-param name="length" select="xs:maxLength/@value"/></xsl:call-template>),</xsl:when>
</xsl:choose>--base=<xsl:value-of select="@base"/></xsl:template>

<xsl:template match="/">
  <xsl:apply-templates select='/xs:schema/xs:complexType/xs:sequence/xs:element' mode="table"/>
  <xsl:apply-templates select='/xs:schema/xs:complexType/xs:sequence/xs:element/xs:complexType/xs:sequence/xs:element[@name!="OIA"]' mode="table"/>
  <xsl:apply-templates select='/xs:schema/xs:complexType/xs:sequence/xs:element/xs:complexType/xs:sequence/xs:element[@name!="OIA"]' mode="table"/>
  <xsl:apply-templates select='/xs:schema/xs:complexType/xs:sequence/xs:element/xs:complexType/xs:sequence/xs:element[@name="OIA"]/xs:complexType/xs:sequence/xs:element' mode="table"/>
</xsl:template>
</xsl:stylesheet>