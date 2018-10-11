<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="canhcam-gallery-3">
			<article class="gallery-list">
				<div class="container">
					<h1 class="tb-title --orange">
						<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
					</h1>
					<div class="row">
						<xsl:apply-templates select="/NewsList/News" mode="One"></xsl:apply-templates>
					</div>
				</div>
			</article>
		</section>


	</xsl:template>


	<xsl:template match="News" mode="One">
		<div class="col-12 col-md-6 col-lg-4 item">
			<figure>
				<div class="boxzoom">
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl" />
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title" />
						</xsl:attribute>
					</img>
				</div>
				<div class="hidden">
					<xsl:if test="count(NewsImages)>1">
						<xsl:apply-templates select="NewsImages">
							<xsl:with-param name="position" select="position()"></xsl:with-param>
						</xsl:apply-templates>
					</xsl:if>
				</div>
				<figcaption>
					<h3>
						<xsl:value-of select="Title"></xsl:value-of>
					</h3>
				</figcaption>
			</figure>
		</div>

	</xsl:template>


	<xsl:template match="NewsImages">
		<xsl:param name="position"></xsl:param>
		<xsl:if test="position() &gt;= 1">
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				</img>
			</a>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
