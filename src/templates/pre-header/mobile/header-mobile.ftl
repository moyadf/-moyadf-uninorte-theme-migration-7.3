<section class="hidden-desktop">
  <div id="headerContainer" class="uninorte-navbar-mobile">

    <div class="uninorte-navbar-mobile__logo">
      <a class="${logo_css_class} align-items-center d-md-inline-flex d-sm-none d-none logo-md"
        href="${uninorte_logo_url}" title="<@liferay.language_format arguments="" key=" go-to-x" />">
      <img id="logo_uni_header" alt="${logo_description}" class="mr-2" height="56" src="${site_logo}" />
      <img id="logo_uni_sticky" alt="${logo_description}" class="mr-2 logo_uni" height="56"
        src="${images_folder}/uninorte/header/uni-logo-symbol.svg" />
      </a>
    </div>

    <div class="uninorte-navbar-search-menu-box">
      <div class="uninorte-search">
        <div id="uninorte-search__icon-mb" class="uninorte-search__icon">
          <i class="fas fa-search"></i>
        </div>
        <div id="uninorte-search__box-mb" class="uninorte-search__box">
          <div class="uninorte-search__box-inner">
            <@liferay.search />
            <i id="close-search-mb" class="fas fa-times-circle"></i>
          </div>

        </div>
      </div>

      <div class="uninorte-navbar__toggle">
        <i class="fas fa-bars" id="nav-icon"></i>
        <#--<span></span>
          <span></span>
          <span></span>
          <span></span>-->
      </div>
    </div>
  </div>

  <div class="uninorte-sidebar" id="sidebar">
    <div class="uninorte-sidebar__portals">

      <ul class="uninorte-sidebar__portals-nav">
        <li class="uninorte-sidebar__portals-li">
          <a id="showChild" class="uninorte-sidebar__portals-a">
            <span>Portales</span>
            <img src="https://www.uninorte.edu.co/uninorte-theme/images/uninorte/icons/ico-portales-white.svg"
              alt="Icon portales">
            <i class="fas fa-chevron-down" aria-hidden="true"></i>
          </a>

          <ul id="child-item" class="uninorte-sidebar__portals-sub">
            <li class="uninorte-sidebar__portals-sub-li">
              <a class="uninorte-sidebar__portals-sub-a" href="https://www.uninorte.edu.co/login">Estudiantes</a>
            </li>
            <li class="uninorte-sidebar__portals-sub-li">
              <a class="uninorte-sidebar__portals-sub-a" href="https://www.uninorte.edu.co/login">Profesores y
                administrativos</a>
            </li>
            <li class="uninorte-sidebar__portals-sub-li">
              <a class="uninorte-sidebar__portals-sub-a" href="https://www.uninorte.edu.co/web/Egresados">Egresados</a>
            </li>
            <li class="uninorte-sidebar__portals-sub-li">
              <a class="uninorte-sidebar__portals-sub-a"
                href="https://guayacan.uninorte.edu.co/4PL1CACI0N35/portal_consejo_php/">Consejo directivo</a>
            </li>
            <li class=" uninorte-sidebar__portals-sub-li">
              <a class="uninorte-sidebar__portals-sub-a"
                href="https://www.uninorte.edu.co/web/proveedores">Proveedores</a>
            </li>
            <li class="uninorte-sidebar__portals-sub-li">
              <a class="uninorte-sidebar__portals-sub-a" href="https://www.uninorte.edu.co/aspirantes">Aspirantes</a>
            </li>

          </ul>
        </li>
      </ul>

    </div>

    <div class="uninorte-sidebar__navigation">
      <#if has_navigation && is_setup_complete>
        <@liferay.navigation_menu instance_id="main_navigation_menu_mobile"
          default_preferences="${freeMarkerPortletPreferences}" />
      </#if>
    </div>

    <div class="uninorte-sidebar__social-radio">
      <div class="uninorte-sidebar__social">
        <ul>
          <li><a href="https://www.facebook.com/uninortecolombia"><i class="fab fa-facebook-f"></i></a></li>
          <li><a href="https://www.instagram.com/uninorteco"><i class="fab fa-instagram"></i></a></li>
          <li><a href="https://twitter.com/uninorteco"><i class="fab fa-twitter"></i></a></li>
          <li><a href="https://co.linkedin.com/school/universidad-del-norte"><i class="fab fa-linkedin-in"></i></a></li>
          <li><a href="https://www.youtube.com/c/UninorteAcad%C3%A9mico"><i class="fab fa-youtube"></i></a></li>
          <li><a href="https://wa.me/573145905480"><i class="fab fa-whatsapp"></i></a></li>
        </ul>
      </div>

      <div class="uninorte-sidebar__radio">
        <#include "${full_templates_path}/pre-header/radio.ftl" />
      </div>
    </div>

  </div>
</section>