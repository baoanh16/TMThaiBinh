<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin Zone-->
	<xsl:template match="/">
		<!-- Call Menu Items -->
		<ul class="navbar-nav mt-2 mt-md-0">
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		</ul>
	</xsl:template>

	<!--Begin Zone Child-->
	<xsl:template match="Zone">
		<!--item-->
		<li class="nav-item">
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>nav-item active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:if test="count(Zone) > 0">
				<xsl:attribute name="class">
					<xsl:text>nav-item dropdown</xsl:text>
				</xsl:attribute>
				<xsl:if test="IsActive='true'">
					<xsl:attribute name="class">
						<xsl:text>nav-item dropdown active</xsl:text>
					</xsl:attribute>
				</xsl:if>
			</xsl:if>
			<a class="nav-link">
				<!-- Active -->
				<xsl:if test="IsActive='true'">
					<xsl:attribute name="class">
						<xsl:text>nav-link active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<!-- Dropdown -->
				<xsl:if test="count(Zone) > 0">
					<!-- Nếu trang được chọn mở với thuộc tính target thì sẽ bật menu khi hover -->
					<xsl:attribute name="data-toggle">
						<xsl:text>dropdown</xsl:text>
					</xsl:attribute>
					<xsl:if test="Url != '#'">
						<xsl:attribute name="dropdown-type">
							<xsl:text>hover</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<xsl:attribute name="class">
						<xsl:text>nav-link dropdown-toggle</xsl:text>
					</xsl:attribute>
					<!-- Active -->
					<xsl:if test="IsActive='true'">
						<xsl:attribute name="class">
							<xsl:text>nav-link dropdown-toggle active</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<xsl:attribute name="id">
						<xsl:text>itemMenuDropdown-</xsl:text>
						<xsl:value-of select="position()"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="role">
						<xsl:text>button</xsl:text>
					</xsl:attribute>
					<xsl:attribute name="aria-haspopup">
						<xsl:text>true</xsl:text>
					</xsl:attribute>
					<xsl:attribute name="aria-expanded">
						<xsl:text>false</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<!-- URL -->
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
			<!--Call Sub Menu-->
			<xsl:if test="count(Zone) > 0">
				<div class="dropdown-menu dropdown-arrow">
					<xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
				</div>
			</xsl:if>
		</li>
	</xsl:template>

	<!-- Child -->
	<xsl:template match="Zone" mode="Child">
		<a class="dropdown-item">
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>dropdown-item active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="aria-labelledby">
				<xsl:text>itemMenuDropdown-</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="href">
				<xsl:value-of select="../Url" />
				<xsl:text>#zone-</xsl:text>
				<xsl:value-of select="ZoneId" />
			</xsl:attribute>
			<xsl:attribute name="target">
				<xsl:value-of select="Target"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
		</a>
	</xsl:template>

</xsl:stylesheet>
