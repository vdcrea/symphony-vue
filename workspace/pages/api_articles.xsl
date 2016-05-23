<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/pagination.xsl"/>

<xsl:output
    method="xml"
    omit-xml-declaration="yes"
    encoding="UTF-8"
    indent="yes" />

<xsl:template match="data">{
    "articles": [<xsl:apply-templates select="articles/entry" />
    ],
    "pagination": <xsl:apply-templates select="articles/pagination" />
}
</xsl:template>


<xsl:template match="articles/entry">
        {
            "title": <xsl:value-of select="title"/>,
            "id": "<xsl:value-of select="@id"/>",
            "date": "<xsl:value-of select="system-date/created"/>",
            "handle": "<xsl:value-of select="title/@handle"/>"
        }<xsl:if test="./following-sibling::entry">,</xsl:if>
</xsl:template>


<xsl:template match="articles/pagination">
    <xsl:call-template name="pagination"></xsl:call-template>
</xsl:template>


</xsl:stylesheet>
