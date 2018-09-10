<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-gallery-2">
			<article class="gallery-details">
				<div class="container">
					<h1 class="tb-title --orange">
						<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
					</h1>
					<div class="row gallery-lists">
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
					</div>
				</div>
			</article>
		</section>

	</xsl:template>





	<xsl:template match="News">
		<div class="col-sm-6 col-lg-4">
			<a class="item">
					<xsl:attribute name="href">
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="data-src">
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="data-poster">
							<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
				<figure>
					<div class="boxzoom">
						<div class="zoom-item">
							<div class="fab fa-youtube"></div>
						</div>
						<img class="img-fluid">
						<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</xsl:attribute>
						</img>
					</div>
					<figcaption>
						<!-- <time><xsl:value-of select="CreatedDate"></xsl:value-of></time> -->
						<h3><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h3>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>