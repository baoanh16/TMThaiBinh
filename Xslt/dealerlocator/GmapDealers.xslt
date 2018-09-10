<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">

		<input type="hidden" id="hdnDealerLocatorSiteId">
		<xsl:attribute name="value">
			<xsl:value-of select="/DealerList/SiteId"></xsl:value-of>
		</xsl:attribute>
		</input>
		<input type="hidden" id="hdnDealerLocatorLanguageId">
		<xsl:attribute name="value">
			<xsl:value-of select="/DealerList/LanguageId"></xsl:value-of>
		</xsl:attribute>
		</input>
		<input type="hidden" id="hdnDealerLocatorZoneGuid" value="">
		<xsl:attribute name="value">
			<xsl:value-of select="/DealerList/ZoneGuid"></xsl:value-of>
		</xsl:attribute>
		</input>
		<input type="hidden" id="hdfDealerLocatorSelectCountry">
		<xsl:attribute name="value">
			<xsl:value-of select="/DealerList/SelectCountryText"></xsl:value-of>
		</xsl:attribute>
		</input>
		<input type="hidden" id="hdfDealerLocatorSelectProvince">
		<xsl:attribute name="value">
			<xsl:value-of select="/DealerList/SelectProvinceText"></xsl:value-of>
		</xsl:attribute>
		</input>
		<input type="hidden" id="hdfDealerLocatorSelectDistrict">
		<xsl:attribute name="value">
			<xsl:value-of select="/DealerList/SelectDistrictText"></xsl:value-of>
		</xsl:attribute>
		</input>
		<input type="hidden" id="hdfDealerLocatorSelectZone">
		<xsl:attribute name="value">
			<xsl:value-of select="/DealerList/SelectZoneText"></xsl:value-of>
		</xsl:attribute>
		</input>
		<input type="hidden" id="hdfDealerLocatorCulture">
		<xsl:attribute name="value">
			<xsl:value-of select="/DealerList/Culture"></xsl:value-of>
		</xsl:attribute>
		</input>
		<div class="container">
			<div id="super-store-finder">
				<div id="main_content" class="info">
					<div id="clinic-finder" class="system-map clearfix">
						<div class="row inf h-100 no-gutters">
							<section class="col-md-5 col-lg-4 findmap-wrap">
								<div class="findmap">
									<h1 class="citigym-title title-linear system-title">
										<xsl:value-of select="/DealerList/ModuleTitle"></xsl:value-of>
										<!-- <xsl:value-of select="/DealerList/ZoneTitle" disable-output-escaping="yes"></xsl:value-of> -->
									</h1>
									<div class="filtermap clearfix">
										<div class="label">Chọn khu vực bạn muốn bắt đầu</div>
										<div class="field form_desc" style="display:none;">
											<select class="form-select custom-select" id="ddlCountry"></select>
										</div>
										<div class="field form_desc mb-3 cccity"  style="display:none;">
											<select class="form-select custom-select" id="ddlProvince">
												<option value="">
													<xsl:value-of select="/DealerList/SelectProvinceText"></xsl:value-of>
												</option>
											</select>
										</div>
										<div class="field form_desc">
											<select class="form-select custom-select" id="ddlDistrict">
												<option value="">
													<xsl:value-of select="/DealerList/SelectDistrictText"></xsl:value-of>
												</option>
											</select>
										</div>
										<input type="submit" id="edit-submit" class="btn-searchmap" style="display: none;">
										<xsl:attribute name="value">
											<xsl:value-of select="/DealerList/SearchText"></xsl:value-of>
										</xsl:attribute>
										</input>
										<div class="d-none">
											<div class="searh-text">
												<label>
													<xsl:value-of select="/DealerList/OrText"></xsl:value-of>
												</label>
												<input type="text" maxlength="128" name="address" id="address" size="60" value="" class="form-text" autocomplete="off">
												<xsl:attribute name="placeholder">
													<xsl:value-of select="/DealerList/EnterLocationText"></xsl:value-of>
												</xsl:attribute>
												</input>
												<input type="submit" id="edit-submit" class="btn btn-large btn-primary">
												<xsl:attribute name="value">
													<xsl:value-of select="/DealerList/SearchText"></xsl:value-of>
												</xsl:attribute>
												</input>
											</div>
										</div>
									</div>
								</div>
								<div class="addresslist clearfix content">
									<div id="results" class="dealer-list content-list">
										<!--  <div id="ajax_msg" class="locate mrb15">
											</div> -->
										<ul class="noli list_system mrb15" style="display: block;" id="list">
										</ul>
									</div>
									<div id="direction" class="find_address" style="display:none;">
										<div class="row mrb10">
											<div class="col-sm-2">
												<strong>
													<xsl:value-of select="/DealerList/FromText"></xsl:value-of>
												</strong>
											</div>
											<div class="col-sm-10">
												<input id="origin-direction" name="origin-direction" class="orides-txt" type="text" />
											</div>
										</div>
										<div class="row mrb20">
											<div class="col-sm-2">
												<strong>
													<xsl:value-of select="/DealerList/ToText"></xsl:value-of>
												</strong>
											</div>
											<div class="col-sm-10">
												<input id="dest-direction" name="dest-direction" class="orides-txt" type="text" />
											</div>
										</div>
										<div id="get-dir-button" class="get-dir-button">
											<input type="submit" id="get-direction" class="btn">
											<xsl:attribute name="value">
												<xsl:value-of select="/DealerList/FindText"></xsl:value-of>
											</xsl:attribute>
											</input>
											<a href="javascript:directionBack()">
												<xsl:value-of select="/DealerList/BackText"></xsl:value-of>
											</a>
										</div>
									</div>
									<div class="overlay" id="overlay-contact-clinic-form">
										<div class="form-wrapper">
										</div>
									</div>
								</div>
							</section>
							<div class="col-md-7 col-lg-8">
								<div id="map">
									<input type="hidden" id="distance" name="distance" value="1" />
									<div id="map_canvas" class="map_system"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>