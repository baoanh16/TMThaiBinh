<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="canhcam-home-3">
			<div class="container">
				<div class="title">
					<h3 class="sub-title">
						<xsl:value-of select="/ZoneList/Opportunity" />
					</h3>
					<h2 class="tb-title --black --title-left">
						<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
					</h2>
				</div>
				<div class="row">
					<xsl:apply-templates select="/ZoneList/Zone" mode="Father"></xsl:apply-templates>
				</div>
			</div>
		</section>

	</xsl:template>
	<xsl:template match="Zone" mode="Father">
		<xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone" mode="Child">
		<div class="col-12 col-md-6 col-lg-3">
			<a class="item">
				<xsl:attribute name="href">
					<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<figure>
					<div class="boximg">
						<xsl:attribute name="bg-img">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<img class="img-fluid">
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
						<div class="textctn">
							<h3>
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h3>
							<p>
								<xsl:value-of select="/ZoneList/ViewMoreText" />
							</p>
						</div>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:template>


</xsl:stylesheet>
