<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />







	<!-- Begin Banner Father -->
	<xsl:template match="/">
		<div class="list-partner owl-carousel owl-theme">
			<!-- Call Items -->
			<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
		</div>
	</xsl:template>

	<!-- Item -->
	<xsl:template match="Banner">
		<div class="item">
			<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
			</img>
			<!-- <xsl:attribute name="bg-img">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute> -->
			<!-- <div class="title">
				<h2>
					<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
				</h2>
				<a class="btn btn-view">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<svg>
						<rect></rect>
					</svg>
					<xsl:value-of select="/BannerList/ViewMoreText" />
				</a>
			</div> -->

		</div>
	</xsl:template>
</xsl:stylesheet>
