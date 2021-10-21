<div id="heading-uninorte" class="hidden-mobile">

  <#-- pre header radio, language, portals and search-->
  <div class="uninorte-heading">
    
    <div class="uninorte__heading-top">
      <div class=" uninorte-heading__radio">
        <#include "${full_templates_path}/pre-header/radio.ftl" />
        <div class="uniorte-heading__social">
          <ul class="uninorte_social">
            <li>
              <a href="https://www.facebook.com/uninortecolombia">
                <i class="fab fa-facebook-f"></i>
              </a>
            </li>

            <li>
              <a href="https://www.instagram.com/uninorteco">
                <i class="fab fa-instagram"></i>
              </a>
            </li>

            <li>
              <a href="https://twitter.com/uninorteco">
                <i class="fab fa-twitter"></i>
              </a>
            </li>

            <li>
              <a href="https://www.youtube.com/c/UninorteAcad%C3%A9mico">
                <i class="fab fa-youtube"></i>
              </a>
            </li>

          </ul>
        </div>
      </div>

      <div class="uninirte-heading__options">
        <div class="uninorte-languague">
          <#include "${full_templates_path}/pre-header/idioma.ftl" />
        </div>
        <div class="uninorte-portals uni-portales uni-pre-header__menu">
          <#include "${full_templates_path}/pre-header/portales.ftl" />
        </div>
        <#include "${full_templates_path}/pre-header/search.ftl" />
      </div>

    </div>
    
  </div>
  <#-- end pre header radio, language, portals and search-->

  <#-- pre header navigation and logo -->
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
          <a class="${logo_css_class} align-items-center d-md-inline-flex d-sm-none d-none logo-md"
            href="${uninorte_logo_url}" title="<@liferay.language_format arguments="" key=" go-to-x" />">
          <img id="logo_uni_header" alt="${logo_description}" class="mr-2" height="56" src="${site_logo}" />
          <img id="logo_uni_sticky" alt="${logo_description}" class="mr-2 logo_uni" height="56"
            src="${images_folder}/uninorte/header/uni-logo-symbol.svg" />
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
  <#-- end pre header navigation and logo -->

  <#-- pre header navigation pages and child -->
  <div class="uninorte-heading">
    
    <div class="uninorte__heading-bottom">
      <#if has_navigation && is_setup_complete>
        <@liferay.navigation_menu default_preferences="${freeMarkerPortletPreferences}" />
      </#if>
    </div>
    
  </div>
  <#-- end pre header navigation pages and child -->

</div>