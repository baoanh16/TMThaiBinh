<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<section class="canhcam-brochure-1">
			<article class="brochures-list">
				<div class="container">
					<h1 class="tb-title --orange">
						<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
					</h1>
					<div class="row">
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<div class="col-12">
			<a href="" target="_blank">
				<xsl:attribute name="href">
					<xsl:value-of select="FileUrl"></xsl:value-of>
				</xsl:attribute>
				<figure>
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
				</figure>
			</a>
		</div>
	</xsl:template>

</xsl:stylesheet>
