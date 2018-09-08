<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />


	<xsl:template match="/">
		<section class="canhcam-boxes-10">
			<div class="container">
				<div class="row mb-2">
					<div class="col-lg-9">
						<div class="text">
							<h1>
								<xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of>
							</h1>
							<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<p>
							<a class="btn download btn-lg" href="#">
								<i class="fa fa-download"></i>
							</a>
						</p>
					</div>
					<div class="col-lg-3 other">
						<div class="other-text" data-fix="92" data-fix-type="initial" data-fix-change="sticky">
							<h2>
								Tin tuyển dụng khác
							</h2>
							<div class="lists">
								<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="NewsOther">
		<hr>
		</hr>
		<a class="item">
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<h3>
				<xsl:value-of select="Title"></xsl:value-of>
			</h3>
			<time>
				<xsl:value-of select="CreatedDate"></xsl:value-of>
			</time>
		</a>
	</xsl:template>

</xsl:stylesheet>