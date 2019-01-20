<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-nav-3">
			<div class="container">
				<div class="row">
					<div class="col item" bg-img="/Data/Sites/1/media/nav-bg.png">
						<a class="trigger-btn" href="javascript:void(0)" title="title">Danh mục</a>
						<nav>
							<ul class="nav justify-content-center nav-pills">
								<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>


	<!-- <xsl:template match="Zone" mode="Zone1">

	</xsl:template> -->
	<!-- <xsl:template match="Zone" mode="Zone2">

	</xsl:template> -->
	<!--Begin Zone Child Gen <li>-->
	<xsl:template match="Zone">
		<!--item-->
		<li class="nav-item">

			<a class="nav-link">
				<xsl:if test="IsActive='true'">
					<xsl:attribute name="class">
						<xsl:text>nav-link active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
	<!--End Zone Child  Gen <li>-->






</xsl:stylesheet>
