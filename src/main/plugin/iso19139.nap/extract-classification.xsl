<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet   xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                  xmlns:gco="http://www.isotc211.org/2005/gco"
                  xmlns:gmd="http://www.isotc211.org/2005/gmd">

  <xsl:param name="language" />

  <xsl:template match="gmd:MD_Metadata">

    <classification>
      <collection><xsl:value-of select="gmd:parentIdentifier/gco:CharacterString" /></collection>
      <function><xsl:value-of select="//gmd:MD_Keywords[@id='classification-theme']/gmd:keyword/gco:CharacterString" /></function>
      <subfunction><xsl:value-of select="//gmd:MD_Keywords[@id='classification-subtheme']/gmd:keyword/gco:CharacterString" /></subfunction>
    </classification>

  </xsl:template>

</xsl:stylesheet>
