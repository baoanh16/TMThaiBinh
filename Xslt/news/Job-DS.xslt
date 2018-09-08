<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />


	<xsl:template match="/">
		<section class="canhcam-boxes-11">
			<div class="container">
				<h2 class="tb-title">
					<xsl:value-of select="ModuleTitle"></xsl:value-of>
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
									<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="News">
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
	</xsl:template>

</xsl:stylesheet>