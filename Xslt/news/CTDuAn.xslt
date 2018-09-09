<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">



		<section class="canhcam-project-detail-1">
			<article class="project-lists">
				<div class="container">
					<h1 class="tb-title --orange">
						<xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of>
					</h1>
					<div class="row">
						<div class="col-lg-8">
							<div class="list-slide owl-carousel owl-theme">
								<xsl:apply-templates select="/NewsDetail/NewsImages"></xsl:apply-templates>
							</div>
						</div>
						<div class="col-lg-4">
							<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div>

					</div>
				</div>
			</article>
		</section>

		<xsl:if test="count(/NewsDetail/NewsOther)>0">
			<section class="canhcam-carousel-2">
				<div class="container">
					<h2 class="tb-title --title-small --title-left">
						<xsl:value-of select="/NewsDetail/OtherProjectsText"></xsl:value-of>
					</h2>
					<div class="row">
						<div class="col">
							<article class="owl-carousel owl-theme list-items">
								<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
							</article>
						</div>
					</div>
				</div>
			</section>
			<!-- <div class="project-detail-ano bg-light mt-5">
				<section class="canhcam-tagline-8">
					<div class="container">
						<div class="row">
							<div class="col">
								<h1 class="h1">
									<xsl:value-of select="/NewsDetail/OtherProjectsText"></xsl:value-of>
								</h1>
							</div>
						</div>
					</div>
				</section>
				<section class="canhcam-carousel-3 prodject-other">
					<div class="container">
						<div class="row no-gutters">
							<div class="col">
								<article class="news-list">
									<div class="owl-carousel">
										<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
									</div>
								</article>
							</div>
						</div>
					</div>
				</section>
			</div> -->
		</xsl:if>

	</xsl:template>


	<xsl:template match="NewsImages">
		<div class="item">
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
	</xsl:template>

	<xsl:template match="NewsOther">
		<div class="item">
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<figure class="text-center">
					<div class="boxzoom">
						<img class="img-fluid">
						<xsl:attribute name="src">
							<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
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
		<!-- <a class="item" href="#">
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="target">
				<xsl:value-of select="Target"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			<figure>
				<img class="img-fluid" src="./img/ac/d-14.png" alt="alt">
				<xsl:attribute name="src">
					<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
				<figcaption>
					<div class="text">
						<h3>
							<xsl:value-of select="Title"></xsl:value-of>
						</h3>
						<p>
							<xsl:value-of select="SubTitle"></xsl:value-of>
						</p>
					</div>
					<span>See more </span>
				</figcaption>
			</figure>
		</a> -->
	</xsl:template>


</xsl:stylesheet>
