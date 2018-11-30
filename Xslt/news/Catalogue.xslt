<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<!--data-comment-->



	<xsl:template match="/">
		<section class="canhcam-catalogue-1">
			<article class="catalogues-list">
				<h1 class="tb-title --orange">
					<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
				</h1>
				<div class="container">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
			</article>
		</section>
	</xsl:template>


	<xsl:template match="News">
		<div class="row wrap-download">
			<div class="col-sm-6">
				<div class="download-title">
					<a href="" target="_blank">
						<xsl:attribute name="href">
							<xsl:value-of select="FileUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</a>

				</div>
			</div>
			<div class="col-sm-6">
				<div class="download-group">
					<a class="download" href="" download="">
						<xsl:attribute name="href">
							<xsl:value-of select="FileUrl"></xsl:value-of>
						</xsl:attribute>
						Download
					</a>
					<a class="View" href="" target="_blank">
						<xsl:attribute name="href">
							<xsl:value-of select="FileUrl"></xsl:value-of>
						</xsl:attribute>
						View
					</a>
				</div>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>
