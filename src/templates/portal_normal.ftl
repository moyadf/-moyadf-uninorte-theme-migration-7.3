<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${html_title}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div class="container-fluid" id="wrapper">
	<header id="banner" role="banner">
		<div id="heading" class="uninorte">
			<#-- -->
			<div id="heading-uninorte">
				<div class="uninorte-heading">
					<div class="uninorte__heading-top">
						<div class=" uninorte-heading__radio">
							<audio id="myAudio" preload="metadata">
								<source src="https://cactus2.uninorte.edu.co/;stream.mp3" /> 
								Unfortunately your browser doesn't support html5
								audio streaming, please update your browser.
							</audio>

							<button class="control" id="control" onclick="audioControl()">
								<img alt="play" id="play" class="play" src="${images_folder}/uninorte/header/entrega-22.png"/> 
								<img alt="pause" id="pause" class="pause" src="${images_folder}/uninorte/header/entrega-23.png"/>
							</button>

							<div class="uniorte-heading__signal">
								<img class="fm" src="${images_folder}/uninorte/header/entrega-20.png"/>
								<img class="signal" src="${images_folder}/uninorte/header/entrega-29.png"/> 
							</div>

							<div class="uniorte-heading__social">
								<ul class="uninorte_social">
									<li>
											<a href="https://www.facebook.com/uninortecolombia">
													<img src="${images_folder}/uninorte/header/entrega-16.png">
											</a>
									</li>
									
									<li>
											<a href="https://www.instagram.com/uninorteco">
													<img src="${images_folder}/uninorte/header/entrega-18.png">
											</a>
									</li>
									
									<li>
											<a href="https://twitter.com/uninorteco">
													<img src="${images_folder}/uninorte/header/entrega-17.png">
											</a>
									</li>
									
									<li>
											<a href="https://www.youtube.com/c/UninorteAcad%C3%A9mico">
													<img src="${images_folder}/uninorte/header/entrega-19.png">
											</a>
									</li>
									
								</ul>
							</div>
						</div>

						<div class="uninorte__search">
							<@liferay.search />
						</div>
						
					</div>
				</div>
				
				<div class="uninorte-heading">
					<div class="uninorte-heading__middle" role="navigation">
						
						<ul class="uninorte-heading__nav">
							<li class="uninorte-heading__item">
								<a href='${sobre_nosotros_url}' target="${tipo_target_url}">${sobre_nosotros_name}</a>
							</li>
							<li class="uninorte-heading__item">
								<a href='${estudia_con_nosotros_url}' target="${tipo_target_url}">${estudia_con_nosotros_name}</a>
							</li>
							<li class="uninorte-heading__logo">
								<a class="${logo_css_class} align-items-center d-md-inline-flex d-sm-none d-none logo-md" href="${uninorte_logo_url}" title="<@liferay.language_format arguments="" key="go-to-x" />">
									<img id="logo_uni_header" alt="${logo_description}" class="mr-2" height="56" src="${site_logo}" />
									<img id="logo_uni_sticky" alt="${logo_description}" class="mr-2 logo_uni" height="56" src="${images_folder}/uninorte/header/uni-logo-symbol.svg" />
								</a>
							</li>
							<li class="uninorte-heading__item">
								<a href='${admisiones_registro_url}' target="${tipo_target_url}">${admisiones_registro_name}</a>
							</li>
							<li class="uninorte-heading__item">
								<a href='${becas_apoyo_pagos_url}' target="${tipo_target_url}">${becas_apoyo_pagos_name}</a>
							</li>
						</ul>

					</div>
				</div>
				
				<div class="uninorte-heading">
					<div class="uninorte__heading-bottom">
						<#if has_navigation && is_setup_complete>
							<@liferay.navigation_menu default_preferences="${freeMarkerPortletPreferences}" />
						</#if>
					</div>
				</div>
			</div>
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

<script src="${javascript_folder}/radio.js"></script>
<script src="${javascript_folder}/sticky.js"></script>

</body>

</html>