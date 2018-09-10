<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />


	<xsl:template match="/">
		<section class="canhcam-news-2">
			<article class="container">
				<h2 class="tb-title">
					<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
				</h2>
			</article>
			<article>
				<div class="container">
					<div class="row news-hot">
						<div class="col-lg-8 top-list">
							<xsl:apply-templates select="/NewsList/News" mode="Hot"></xsl:apply-templates>
						</div>

						<div class="col-lg-4 part-list">

							<xsl:apply-templates select="/NewsList/News" mode="HotAside"></xsl:apply-templates>
							<!-- <a class="item" href="news-detail.html">
								<figure>
									<img class="img-fluid" src="./img/news/n_2.jpg"></img>
									<figcaption>
										<h3>Thị trường bất động sản: "Sẽ không biến động lớn đến 2019"</h3>
										<time>12/12/2017</time>
									</figcaption>
								</figure>
							</a>
							<a class="item" href="news-detail.html">
								<figure>
									<img class="img-fluid" src="./img/news/n_3.jpg"></img>
									<figcaption>
										<h3>Bất động sản TPHCM từ nay đến Tết Kỷ Hợi 2019: Điều gì sẽ xảy ra?</h3>
										<time>12/12/2017</time>
									</figcaption>
								</figure>
							</a> -->
						</div>
					</div>
					<!-- </div>
				<div class="container"> -->
					<div class="row news-list">
						<xsl:apply-templates select="/NewsList/News" mode="Normal"></xsl:apply-templates>
						<!-- <div class="col-sm-6 col-lg-4">
							<a class="item" href="news-detail.html">
								<figure>
									<img class="img-fluid" src="./img/news/n_4.jpg"></img>
									<figcaption>
										<h3>Ưu thế của thang máy gia đình công nghệ thủy lực Italia</h3>
										<time>12/12/2017</time>
										<p>Bề dày thương hiệu sau hơn nửa thế kỷ, đẳng cấp và sang trọng về thiết kế cùng hệ thống dịch vụ hoàn
											hảo... là những ưu thế đưa thang máy gia đình nhập khẩu Italia đứng ở vị trí top đầu trên thị trường thang
											máy trong nước.</p>
									</figcaption>
								</figure>
							</a>
						</div>
						<div class="col-sm-6 col-lg-4">
							<a class="item" href="news-detail.html">
								<figure>
									<img class="img-fluid" src="./img/news/n_5.jpg"></img>
									<figcaption>
										<h3>Ngành thang máy đang thiếu hụt nhân viên kỹ thuật</h3>
										<time>12/12/2017</time>
										<p>Bề dày thương hiệu sau hơn nửa thế kỷ, đẳng cấp và sang trọng về thiết kế cùng hệ thống dịch vụ hoàn
											hảo...</p>
									</figcaption>
								</figure>
							</a>
						</div>
						<div class="col-sm-6 col-lg-4">
							<a class="item" href="news-detail.html">
								<figure>
									<img class="img-fluid" src="./img/news/n_6.jpg"></img>
									<figcaption>
										<h3>8 loại thang máy đang phổ biến nhất Việt Nam</h3>
										<time>12/12/2017</time>
										<p>Bề dày thương hiệu sau hơn nửa thế kỷ, đẳng cấp và sang trọng về thiết kế cùng hệ thống dịch vụ hoàn
											hảo... là những ưu thế đưa thang máy gia đình nhập khẩu</p>
									</figcaption>
								</figure>
							</a>
						</div>
						<div class="col-sm-6 col-lg-4">
							<a class="item" href="news-detail.html">
								<figure>
									<img class="img-fluid" src="./img/news/n_7.jpg"></img>
									<figcaption>
										<h3>Thị trường thang máy Việt Nam: “Miếng bánh” đầy hấp dẫn</h3>
										<time>12/12/2017</time>
										<p>Bề dày thương hiệu sau hơn nửa thế kỷ, đẳng cấp và sang trọng về thiết kế cùng hệ thống dịch vụ hoàn
											hảo... là những ưu thế đưa thang</p>
									</figcaption>
								</figure>
							</a>
						</div>
						<div class="col-sm-6 col-lg-4">
							<a class="item" href="news-detail.html">
								<figure>
									<img class="img-fluid" src="./img/news/n_8.jpg"></img>
									<figcaption>
										<h3> Thị trường thang máy nội địa đang trên đà phát triển</h3>
										<time>12/12/2017</time>
										<p>Bề dày thương hiệu sau hơn nửa thế kỷ, đẳng cấp và sang trọng về thiết kế cùng hệ thống dịch vụ hoàn
											hảo... là những ưu thế đưa thang máy gia đình nhập khẩu Italia đứng ở vị trí top đầu trên thị</p>
									</figcaption>
								</figure>
							</a>
						</div>
						<div class="col-sm-6 col-lg-4">
							<a class="item" href="news-detail.html">
								<figure>
									<img class="img-fluid" src="./img/news/n_9.jpg"></img>
									<figcaption>
										<h3>Dòng thang máy chất lượng cao Nhật Bản sắp đổ bộ Việt Nam</h3>
										<time>12/12/2017</time>
										<p>Bề dày thương hiệu sau hơn nửa thế kỷ, đẳng cấp và sang trọng về thiết kế cùng hệ thống dịch vụ hoàn
											hảo... là </p>
									</figcaption>
								</figure>
							</a>
						</div> -->
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="News" mode="Hot">
		<xsl:if test="position() = 1">
			<a class="item">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<figure>
					<img class="img-fluid">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					</img>
					<figcaption>
						<h3>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h3>
						<time>
							<xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
						</time>
					</figcaption>
				</figure>
			</a>
		</xsl:if>
	</xsl:template>

	<xsl:template match="News" mode="HotAside">
		<xsl:if test="position() = 2 or position() = 3">
			<a class="item">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<figure>
					<img class="img-fluid">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					</img>
					<figcaption>
						<h3>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h3>
						<time>
							<xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
						</time>
					</figcaption>
				</figure>
			</a>
		</xsl:if>
	</xsl:template>

	<xsl:template match="News" mode="Normal">
		<xsl:if test="position() &gt; 3">
			<div class="col-sm-6 col-lg-4">
				<a class="item">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<figure>
						<img class="img-fluid">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						</img>
						<figcaption>
							<h3>
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h3>
							<time>
								<xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
							</time>
							<p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></p>
						</figcaption>
					</figure>
				</a>
			</div>
		</xsl:if>
	</xsl:template>

</xsl:stylesheet>