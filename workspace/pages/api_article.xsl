<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/pagination.xsl"/>

<xsl:output
    method="html"
    omit-xml-declaration="yes"
    encoding="UTF-8"
    indent="no" />


<xsl:template match="data">{
   "article": <xsl:apply-templates select="article/entry" />,
   "pagination": <xsl:apply-templates select="comments/pagination" />
}</xsl:template>


<xsl:template match="article/entry">
      {
         "title": <xsl:value-of select="title"/>,
         "id": "<xsl:value-of select="@id"/>",
         "handle": "<xsl:value-of select="title/@handle"/>",
		 "date": "<xsl:value-of select="system-date/created"/>",
         "text": <xsl:value-of select="text"/>,
		 "comments": [<xsl:apply-templates select="//comments/entry" />]
      }</xsl:template>


<xsl:template match="comments/entry">
			{
				"text": <xsl:value-of select="text"/>,
                "date": "<xsl:value-of select="system-date/created"/>"
			}<xsl:if test="./following-sibling::entry">,</xsl:if>
</xsl:template>


<xsl:template match="comments/pagination">
    <xsl:call-template name="pagination"></xsl:call-template>
</xsl:template>


</xsl:stylesheet>
