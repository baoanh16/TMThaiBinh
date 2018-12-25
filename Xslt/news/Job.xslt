<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />


	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>


	<xsl:template match="Zone">
		<xsl:choose>

			<xsl:when test="position()=1">
				<section class="canhcam-boxes-2 pb-0">
					<xsl:attribute name="id">
						<xsl:text>zone-</xsl:text>
						<xsl:value-of select="ZoneId" />
					</xsl:attribute>
					<div class="container">
						<h2 class="tb-title">
							<xsl:value-of select="Title"></xsl:value-of>
						</h2>
					</div>
					<div class="container">
						<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
					</div>
				</section>
			</xsl:when>


			<xsl:when test="position()=2">
				<section class="canhcam-boxes-3 pb-0">
					<xsl:attribute name="id">
						<xsl:text>zone-</xsl:text>
						<xsl:value-of select="ZoneId" />
					</xsl:attribute>
					<article class="job-list">
						<div class="container">
							<div class="row">
								<div class="col-12">
									<h2 class="tb-title">
										<xsl:value-of select="Title"></xsl:value-of>
									</h2>
								</div>
							</div>
							<div class="row info top-part">
								<xsl:apply-templates select="News" mode="ZoneNews2"></xsl:apply-templates>
							</div>
						</div>
					</article>
				</section>
			</xsl:when>


			<!-- <xsl:when test="position()=3">
				<section class="canhcam-boxes-11">
					<div class="container">
						<h2 class="tb-title">
							<xsl:value-of select="Title"></xsl:value-of>
						</h2>
					</div>
					<div class="container">
						<div class="row mb-2">
							<div class="col">
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th scope="col">Vị trí</th>
												<th scope="col">Địa điểm</th>
												<th scope="col">Thời gian</th>
												<th scope="col">Ngày</th>
											</tr>
										</thead>
										<tbody>
											<xsl:apply-templates select="News" mode="ZoneNews3"></xsl:apply-templates>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</section>
			</xsl:when> -->
		</xsl:choose>
	</xsl:template>



	<xsl:template match="News" mode="ZoneNews1">

		<xsl:if test="position() = 1">
			<div class="row item">
				<div class="col-lg-6">
					<div class="img">
						<xsl:attribute name="bg-img">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<img class="d-lg-none d-xl-block">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="text">
						<h4>
							<xsl:value-of select="Title"></xsl:value-of>
						</h4>
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</div>
		</xsl:if>

		<xsl:if test="position() = 2">
			<div class="row item">
				<div class="col-lg-6 order-lg-2">
					<div class="img">
						<xsl:attribute name="bg-img">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<img class="d-lg-none d-xl-block">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
				</div>
				<div class="col-lg-6 order-lg-1">
					<div class="text">
						<h4>
							<xsl:value-of select="Title"></xsl:value-of>
						</h4>
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>




	<xsl:template match="News" mode="ZoneNews2">
		<div class="col-md-6 col-lg-4 part-list">
			<div class="item">
				<div class="item-top">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					</img>
					<!-- <span>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</span> -->
					<h4>
						<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
					</h4>
				</div>
				<div class="item-bottom">
					<!-- <h4>
						<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
					</h4> -->
					<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</div>
		<!-- <xsl:choose>
			<xsl:when test="position() = 1">
				<xsl:text disable-output-escaping="yes">
					&lt;div class="row info top-part"&gt;
				</xsl:text>
				<div class="col-md-4 part-list">
					<div class="item">
						<div class="item-top">
							<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>

							</img>
							<span>
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</span>
						</div>
						<div class="item-bottom">
							<h4>
								<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
							</h4>
							<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
				</div>
			</xsl:when>
			<xsl:when test="position() = 2">
				<div class="col-md-4 part-list">
					<div class="item">
						<div class="item-top">
							<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>

							</img>
							<span>
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</span>
						</div>
						<div class="item-bottom">
							<h4>
								<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
							</h4>
							<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
				</div>
				<xsl:text disable-output-escaping="yes">
					&lt;/div &gt;
				</xsl:text>
			</xsl:when>

			<xsl:when test="position() = 3">
				<xsl:text disable-output-escaping="yes">
					&lt;div class="row info bottom-part"&gt;
				</xsl:text>
				<div class="col-md-4 part-list">
					<div class="item">
						<div class="item-top">
							<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>

							</img>
							<span>
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</span>
						</div>
						<div class="item-bottom">
							<h4>
								<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
							</h4>
							<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
				</div>
			</xsl:when>


			<xsl:when test="position() = 4">
				<div class="col-md-4 part-list">
					<div class="item">
						<div class="item-top">
							<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>

							</img>
							<span>
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</span>
						</div>
						<div class="item-bottom">
							<h4>
								<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
							</h4>
							<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
				</div>
			</xsl:when>

			<xsl:when test="position() = 5">
				<div class="col-md-4 part-list">
					<div class="item">
						<div class="item-top">
							<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>

							</img>
							<span>
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</span>
						</div>
						<div class="item-bottom">
							<h4>
								<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
							</h4>
							<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
				</div>
				<xsl:text disable-output-escaping="yes">
					&lt;/div &gt;
				</xsl:text>
			</xsl:when>
		</xsl:choose> -->
	</xsl:template>


	<!-- <xsl:template match="News" mode="ZoneNews3">
		<tr>
			<td>
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</a>
			</td>
			<td>
				<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
			</td>
		</tr>
	</xsl:template> -->

</xsl:stylesheet>
