<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">

		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>

	</xsl:template>
	<xsl:template match="Zone">
		<div class="list-content owl-carousel owl-theme" id="sync22">
			<xsl:apply-templates select="Zone" mode="Content"></xsl:apply-templates>
		</div>
	</xsl:template>

	<xsl:template match="Zone" mode="Content">
		<a class="item">
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			<figure>
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="SecondImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				</img>
				<figcaption>
					<h5>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h5>
				</figcaption>
			</figure>
		</a>





	</xsl:template>

</xsl:stylesheet>
