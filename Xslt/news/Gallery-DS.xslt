<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />


	<xsl:template match="/">
		<section class="canhcam-gallery-3">
			<div class="gallery-details">
				<div class="container">
					<h2 class="tb-title">
						<xsl:value-of select="/NewsList/ModuleTitle" disable-output-escaping="yes">
						</xsl:value-of>
					</h2>
				</div>
				<div class="container">
					<div class="row gallery-lists">
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="News">
		<div class="col-sm-6 col-lg-4">
			<div class="item">
				<figure>
					<img class="img-fluid">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Image/Title" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
					</img>
					<figcaption>
						<h3>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h3>
					</figcaption>
				</figure>
				<div class="boxzoom">
					<xsl:if test="count(NewsImages)>1">
						<xsl:apply-templates select="/NewsLists/NewsImages">
							<xsl:with-param name="position" select="position()"></xsl:with-param>
						</xsl:apply-templates>
					</xsl:if>
				</div>
			</div>
		</div>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>

	
	<xsl:template match="NewsImages">
		<xsl:param name="position"></xsl:param>
		<xsl:if test="position() > 1">
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="ImageUrl"/>
				</xsl:attribute>
				<img class="img-fluid">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"/>
					</xsl:attribute>
				</img>
			</a>
		</xsl:if>
	</xsl:template>

</xsl:stylesheet>