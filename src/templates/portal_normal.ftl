<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${html_title}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<script src="${javascript_folder}/vendors/jquery-min.js"></script>

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div class="container-fluid" id="wrapper">
	<header id="banner" role="banner">
		<div id="heading" class="uninorte">
			<#include "${full_templates_path}/pre-header/header.ftl"/>
			<#include "${full_templates_path}/pre-header/mobile/header-mobile.ftl"/>
		</div>
	</header>

	<section id="content">
		<h2 class="hide-accessible" role="heading" aria-level="1">${the_title}</h2>

		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>

	<footer id="footer" class="uninorte-footer" role="contentinfo">
		<@liferay.navigation_menu instance_id="main_navigation_menu" default_preferences="${freeMarkerPortletPreferences}"/>
	</footer>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

<script src="${javascript_folder}/vendors/bootstrap.min.js"></script>
<script src="${javascript_folder}/vendors/slideout.min.js" type="text/javascript"></script>

<#if is_signed_in>
	<!-- script main no se mostrara para no generar conflictos con la interacción en Liferay -->
<#else>
	<script src="${javascript_folder}/main.js"></script>
</#if>
<script src="https://kit.fontawesome.com/4ff096c9e6.js" crossorigin="anonymous"></script>
<script src="${javascript_folder}/radio.js"></script>
<script src="${javascript_folder}/sticky.js"></script>
<script src="${javascript_folder}/toggle.js"></script>

</body>

</html>