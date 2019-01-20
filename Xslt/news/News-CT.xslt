<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />


	<xsl:template match="/">
		<section class="canhcam-news-details-1">
			<article class="news-details">
				<div class="container">
					<div class="row">
						<div class="col-lg-9">
							<div class="news-read">
								<h1>
									<xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of>
								</h1>
								<xsl:value-of select="/NewsDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of>
								<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
								<!-- <quote>
									<p>Quốc Cường Land</p>
								</quote> -->
								<div class="social-networks nav">
									<div class="nav-item">
										<div class="fb-share-button" data-href="" data-layout="button" data-size="small" data-mobile-iframe="true"><a
											 class="fb-xfbml-parse-ignore" target="_blank" href="">Chia sẻ</a></div>
									</div>
									<div class="nav-item"><a class="twitter-share-button" href="https://twitter.com/share" data-size="medium"
										 data-text="custom share text" data-url="" data-via="twitterdev" data-related="twitterapi,twitter">Tweet</a></div>
									<div class="nav-item">
										<div class="g-plusone" data-size="tall"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3">
							<div class="othernews" data-fix="92" data-fix-type="initial" data-fix-change="sticky">
								<h2>Tin liên quan</h2>
								<hr>
								</hr>
								<div class="lists">
									<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
									<!-- <a class="item" href="#">
										<figure><img src="./img/news/n_2.jpg" alt="alt"></img>
											<figcaption>
												<h3>golf-etc EXPum dolor sit amet consecteANDS REFLECTIVE TECHNOLOGY</h3>
												<time>12/12/2017</time>
												<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptas a quidem quas autem sunt aspernatur
													accusamus, odit delectus ex explicabo accusantium totam nihil expedita consectetur officia ea recusandae
													iure debitis.</p>
											</figcaption>
										</figure>
									</a>
									<a class="item" href="#">
										<figure><img src="./img/news/n_3.jpg" alt="alt"></img>
											<figcaption>
												<h3>golf-etc EVE TECHNOLOGY</h3>
												<time>12/12/2017</time>
												<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptas a quidem quas autem sunt aspernatur
													accusamus, odit delectus ex explicabo accusantium totam nihil expedita consectetur officia ea recusandae
													iure debitis.</p>
											</figcaption>
										</figure>
									</a> -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="NewsOther">
		<a class="item">
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<figure>
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
				<figcaption>
					<h3><xsl:value-of select="Title"></xsl:value-of></h3>
					<time><xsl:value-of select="CreatedDate"></xsl:value-of></time>
					<p><xsl:value-of select="BriefContent"></xsl:value-of></p>
				</figcaption>
			</figure>
		</a>
	</xsl:template>

</xsl:stylesheet>
