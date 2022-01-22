<div class="uninorte-sidebar" id="sidebar">
  <div class="uninorte-sidebar__language">
    <ul class="uninorte-sidebar__language-nav">
      <li class="uninorte-sidebar__language-li">
        <a id="showChild" class="uninorte-sidebar__language-a">
          <img src="https://www.uninorte.edu.co/uninorte-theme/images/uninorte/icons/ico-idiomas-white.svg"
            alt="Icon portales">
          <span>Idiomas</span>
          <i class="fas fa-chevron-down" aria-hidden="true"></i>
        </a>

        <ul id="child-item" class="uninorte-sidebar__language-sub">
          <li class="uninorte-sidebar__language-sub-li">
            <a class="uninorte-sidebar__language-sub-a" href="/">Español</a>
          </li>
          <li class="uninorte-sidebar__language-sub-li">
            <a class="uninorte-sidebar__language-sub-a" href="/en/web/englishversion">
              English
            </a>
          </li>
        </ul>
      </li>
    </ul>
  </div>

  <div class="uninorte-sidebar__portals">

    <ul class="uninorte-sidebar__portals-nav">
      <li class="uninorte-sidebar__portals-li">
        <a id="showChild" class="uninorte-sidebar__portals-a">
          <img src="https://www.uninorte.edu.co/uninorte-theme/images/uninorte/icons/ico-portales-white.svg"
            alt="Icon portales">
          <span>Portales</span>
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
        <li><a href="https://www.facebook.com/uninortecolombia" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
        <li><a href="https://www.instagram.com/uninorteco" target="_blank"><i class="fab fa-instagram"></i></a></li>
        <li><a href="https://twitter.com/uninorteco" target="_blank"><i class="fab fa-twitter"></i></a></li>
        <li><a href="https://co.linkedin.com/school/universidad-del-norte" target="_blank"><i class="fab fa-linkedin-in"></i></a></li>
        <li><a href="https://www.youtube.com/c/UninorteAcad%C3%A9mico" target="_blank"><i class="fab fa-youtube"></i></a></li>
        <li><a href="https://wa.me/573145905480" target="_blank"><i class="fab fa-whatsapp"></i></a></li>
      </ul>
    </div>

    <div class="uninorte-sidebar__radio">
      <#include "${full_templates_path}/pre-header/radio_mobile.ftl" />
    </div>
  </div>

</div>