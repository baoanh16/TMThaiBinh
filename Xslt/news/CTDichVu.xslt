<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:choose>
			<xsl:when test="position()=2">
				<section class="canhcam-service-detail-2">
					<article class="service-list">
						<div class="container">
							<div class="list-wrapper">
								<h3>
									<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
								</h3>
								<div class="list-item owl-carousel owl-theme">
									<xsl:apply-templates select="News" mode="ZoneNews2"></xsl:apply-templates>
								</div>
							</div>
						</div>
					</article>
				</section>
			</xsl:when>
			<xsl:when test="position()=1">
				<section class="canhcam-service-detail-1">
					<article class="service-lists">
						<div class="container">
							<h1 class="tb-title --title-small">
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h1>
							<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
						</div>
					</article>
				</section>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews2">
		<div class="item">
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
					<p>
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews1">
		<xsl:if test="(position() mod 2) = 1">
			<xsl:text disable-output-escaping="yes">&lt;div class="row top-list" &gt;</xsl:text>
		</xsl:if>
		<xsl:if test="(position() mod 2) = 1">
			<div class="col-lg-6 order-lg-1 item">
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
				</figure>
			</div>
			<div class="col-lg-6 item">
				<figure>
					<figcaption>
						<p>
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</p>
					</figcaption>
				</figure>
			</div>
		</xsl:if>
		<xsl:if test="(position() mod 2) = 0 ">
			<xsl:text disable-output-escaping="yes">&lt;/div &gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="row bottom-list" &gt;</xsl:text>
		</xsl:if>
		<xsl:if test="(position() mod 2) = 0 ">
			<div class="col-lg-6 item">
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
				</figure>
			</div>
			<div class="col-lg-6 item">
				<figure>
					<figcaption>
						<p>
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</p>
					</figcaption>
				</figure>
			</div>
		</xsl:if>
		<xsl:if test="position()=last()">
			<xsl:text disable-output-escaping="yes">&lt;/div &gt;</xsl:text>
		</xsl:if>
	</xsl:template>




</xsl:stylesheet>
