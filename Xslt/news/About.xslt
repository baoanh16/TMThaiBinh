<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />


	<!--Begin father-->
	<xsl:template match="/">
		<!--Begin nav-->
		<section class="canhcam-nav-4">
			<div class="container">
				<div class="row">
					<div class="col item" bg-img="/Data/Sites/1/media/nav-bg.png">
						<a class="trigger-btn" href="javascript:void(0)" title="title">Danh mục</a>
						<nav>
							<ul class="nav justify-content-center nav-pills">
								<xsl:apply-templates select="/ZoneList/Zone" mode="Nav"></xsl:apply-templates>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
		<!--End nav-->
		<!--Begin content-->
		<xsl:apply-templates select="/ZoneList/Zone" mode="Content"></xsl:apply-templates>
		<!--End content-->
	</xsl:template>
	<!--End father-->
	<!--Begin match nav-->
	<xsl:template match="Zone" mode="Nav">
		<li class="nav-item">
			<a class="nav-link">
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<!--Match Id-->
				<xsl:attribute name="href">
					<xsl:text>javascript:void(0)</xsl:text>
				</xsl:attribute>
				<xsl:attribute name="data-link">
					<xsl:text>canhcam-about-</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
	<!--End match nav-->

	<!--Begin match content-->
	<xsl:template match="Zone" mode="Content">
		<xsl:if test="position() = 1 ">
			<section>
				<!--Match Id-->
				<!--Match Id-->
				<xsl:attribute name="id">
					<xsl:text>canhcam-about-</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<xsl:attribute name="class">
					<xsl:text>canhcam-about-</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<article class="about-list">
					<div class="container">
						<h2 class="tb-title --black">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h2>
						<div class="row">
							<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
						</div>
					</div>
				</article>
			</section>
		</xsl:if>
		<xsl:if test="position() = 2 ">
			<section>
				<xsl:attribute name="bg-img">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="id">
					<xsl:text>canhcam-about-</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<xsl:attribute name="class">
					<xsl:text>canhcam-about-</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<article class="about-list">
					<div class="container">
						<h2 class="tb-title --white">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>

						</h2>
						<p class="title-des">
							<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
						</p>
						<div class="content-list owl-carousel owl-theme" id="sync1">
							<xsl:apply-templates select="News" mode="ZoneNews2Content"></xsl:apply-templates>
						</div>
						<div class="nav-list">
							<div class="nav owl-carousel owl-theme" id="sync2">
								<xsl:apply-templates select="News" mode="ZoneNews2Nav"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</article>
			</section>

		</xsl:if>
		<xsl:if test="position() = 3 ">
			<section>
				<xsl:attribute name="bg-img">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="id">
					<xsl:text>canhcam-about-</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<xsl:attribute name="class">
					<xsl:text>canhcam-about-</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<article class="about-list">
					<div class="container">
						<h2 class="tb-title --black">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h2>
						<div class="row">
							<xsl:apply-templates select="News" mode="ZoneNews3"></xsl:apply-templates>
						</div>
					</div>
				</article>
			</section>
		</xsl:if>
		<xsl:if test="position() = 4 ">
			<section>
				<!--Match Id-->
				<xsl:attribute name="id">
					<xsl:text>canhcam-about-</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<xsl:attribute name="class">
					<xsl:text>canhcam-about-</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<div class="container">
					<div class="title">
						<h2 class="tb-title --black">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h2>
						<p>
							<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
						</p>
					</div>
					<div class="row">
						<div class="col">
							<article class="owl-carousel owl-theme list-items">
								<xsl:apply-templates select="News" mode="ZoneNews4"></xsl:apply-templates>
							</article>
						</div>
					</div>
				</div>

			</section>

		</xsl:if>
		<xsl:if test="position() = 5 ">
			<section>
				<!--Match Id-->
				<xsl:attribute name="id">
					<xsl:text>canhcam-about-</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<xsl:attribute name="class">
					<xsl:text>canhcam-about-</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<article class="about-list">
					<div class="container">
						<h2 class="tb-title --black">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h2>
						<div class="row">
							<div class="col-12">
								<xsl:apply-templates select="News" mode="ZoneNews5"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</article>

			</section>
		</xsl:if>
		<xsl:if test="position() = 6 ">
			<section>
				<!--Match Id-->
				<xsl:attribute name="id">
					<xsl:text>canhcam-about-</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<xsl:attribute name="class">
					<xsl:text>canhcam-about-</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<article class="about-list">
					<div class="container">
						<h2 class="tb-title --black">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h2>
						<div class="row">
							<div class="col-12">
								<xsl:apply-templates select="News" mode="ZoneNews6"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</article>

			</section>
		</xsl:if>
	</xsl:template>
	<!--End match content-->





	<!--Begin match ZoneNews-->
	<xsl:template match="News" mode="ZoneNews1">
		<div class="col-md-4 item order-md-1">
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
		<div class="col-md-8 item">
			<blockquote>
				<em class="fas fa-quote-left"></em>
			</blockquote>
			<figure class="mb-0">
				<figcaption>
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews2">
		<article class="project-list">
			<div class="container-fluid">
				<div class="row no-gutters">
					<div class="col-lg-6 item col-bg">
						<xsl:attribute name="bg-img">
							<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
						</xsl:attribute>
						<img class="img-fluid">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						</img>

					</div>
					<div class="col-lg-6 item">
						<div class="project-content">
							<h3>
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h3>
							<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
				</div>
			</div>
		</article>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews3">
		<div class="col-lg-6 item">
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
					<h3>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h3>
					<p>
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews4">
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
					<h3>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h3>
					<p>
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews5">
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
		</figure>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews6">
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
				<h4>
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				</h4>
			</figcaption>
		</figure>
	</xsl:template>




	<xsl:template match="News" mode="ZoneNews2Nav">
		<div class="item">
			<h5>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</h5>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews2Content">
		<div class="content">
			<div class="row">
				<div class="col-lg-6">
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
					</figure>
				</div>
				<div class="col-lg-6">
					<figure>
						<figcaption>
							<h3>
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h3>
							<p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></p>
						</figcaption>
					</figure>
				</div>
			</div>
		</div>
	</xsl:template>


</xsl:stylesheet>