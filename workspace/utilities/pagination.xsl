<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="pagination">{
        "totalEntries": <xsl:value-of select="@total-entries"/>,
        "totalPages": <xsl:value-of select="@total-pages"/>,
        "entriesPerPage": <xsl:value-of select="@entries-per-page"/>,
        "currentPage": <xsl:value-of select="@current-page"/>
    }</xsl:template>

</xsl:stylesheet>
