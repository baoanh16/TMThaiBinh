<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />


	<!--Begin father-->
	<xsl:template match="/">
		<!--Begin nav-->
		<section class="canhcam-home-1">
			<article class="home-list">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<div class="title">
								<h3 class="sub-title">
									<xsl:value-of select="/ZoneList/ProductService" />
								</h3>
								<h2 class="tb-title --black --title-left">
									<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
								</h2>
							</div>
						</div>
						<div class="col-12">
							<div class="list-img owl-carousel owl-theme" id="sync11">
								<xsl:apply-templates select="/ZoneList/Zone" mode="Content"></xsl:apply-templates>
							</div>
							<div class="list-content owl-carousel owl-theme" id="sync22">
								<xsl:apply-templates select="/ZoneList/Zone" mode="Nav"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>
	<xsl:template match="Zone" mode="Nav">
		<div class="item">
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
				<figcaption>
					<h5>
						<xsl:value-of select="Title"></xsl:value-of>
					</h5>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Content">
		<xsl:apply-templates select="News"></xsl:apply-templates>
	</xsl:template>




	<!--Begin match ZoneNews-->
	<xsl:template match="News">
		<div class="item">
			<xsl:attribute name="bg-img">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<h4>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</h4>
		</div>
	</xsl:template>



</xsl:stylesheet>
