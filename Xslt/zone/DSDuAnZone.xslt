<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="canhcam-project-1">
			<article class="project-lists">
				<div class="container">
					<h1 class="tb-title --orange">
						<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
					</h1>
					<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
				</div>
			</article>
		</section>

	</xsl:template>
	<xsl:template match="Zone">
		<div class="content">
			<div class="row">
				<xsl:apply-templates select="Zone" mode="Content"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="Zone" mode="Content">
		<div class="col-lg-3 item">
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<figure>
					<div class="boxzoom">
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
					</div>
					<figcaption>
						<h3>
							<xsl:value-of select="Title"></xsl:value-of>
						</h3>
					</figcaption>
				</figure>
			</a>
		</div>





	</xsl:template>

</xsl:stylesheet>
