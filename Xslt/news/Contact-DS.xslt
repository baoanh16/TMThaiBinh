<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />


	<xsl:template match="/">
		<section class="canhcam-boxes-4">
			<div class="container">
				<div class="row no-gutters">
					<div class="col-12">
						<h2 class="tb-title">
							<xsl:value-of select="ModuleTitle"></xsl:value-of>
						</h2>
					</div>
				</div>
				<div class="row no-gutters">
					<div class="col-lg-8">
						<div class="maps">
							<xsl:apply-templates select="/NewsList/News" mode="Map"></xsl:apply-templates>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="list-address">
							<xsl:apply-templates select="/NewsList/News" mode="Address"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="News" mode="Map">
		<div class="maps">
			<xsl:if test="position() = 1">
				<xsl:attribute name="class">
					<xsl:text>maps active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="id">
				<xsl:text>map-</xsl:text><xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
		</div>
	</xsl:template>


	<xsl:template match="News" mode="Address">
		<div class="address-item">
				<xsl:if test="position() = 1">
					<xsl:attribute name="class">
						<xsl:text>address-item active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="id">
					<xsl:text>control-map-</xsl:text><xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
			<h4>
				<xsl:value-of select="Title"></xsl:value-of>
			</h4>
			<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
		</div>
	</xsl:template>

</xsl:stylesheet>