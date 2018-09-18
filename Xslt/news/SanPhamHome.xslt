<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<div class="list-img owl-carousel owl-theme" id="sync11">
			<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
		</div>
	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<a class="item" bg-img="./img/home/home_slide_1.png">
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="bg-img">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<h4>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</h4>
		</a>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>

</xsl:stylesheet>
