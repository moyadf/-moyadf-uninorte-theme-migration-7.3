<div class="uninorte-footer__container show-mobile">
  <div class="uninorte-footer__contact">
    <div class="uninorte-footer__logo">
      <img class="uninorte__logo"
        src="/documents/45052/47013/Logo-Uninorte-Sin-vigilada.png/56dcdbfc-597f-b353-ab93-4e6316e5a0bc?t=1633993203028" />

      <img class="uninorte__separator"
        src="/documents/45052/47013/C-20544_SM_DCR_PWEB_footer-home_5.png/c7316973-31ae-5598-f8fc-2164906434bf?t=1633993202222" />

      <span class="uninorte-location">
        km.5 vía Puerto Colombia<br>
        Área Metropolitana de Barranquilla<br>
        Colombia - Suramérica
      </span>

      <ul class="uninorte__links">
        <li>
          <a href="https://lineaeticauninorte.ethicsglobal.com/">
            <img
              src="/documents/45052/47013/C-20544_SM_DCR_PWEB_footer-home_6.png/b6c005bf-19ce-b6bc-79ae-35f7da799881?t=1633993202280">
            <span>Línea ética</span>
          </a>
        </li>
        <li>
          <a href="https://www.uninorte.edu.co/sugerencias">
            <img
              src="/documents/45052/47013/C-20544_SM_DCR_PWEB_footer-home_7.png/e7bb8485-44e1-9b6b-673d-324c6fca95bb?t=1633993202340">
            <span>Buzón de sugerencias</span>
          </a>
        </li>
        <li>
          <a href="https://www.uninorte.edu.co/canales-de-atencion">
            <img
              src="/documents/45052/47013/C-20544_SM_DCR_PWEB_footer-home_15.png/91dfce19-4526-a673-8905-829c1f4982b1?t=1633993202840">
            <span>Otros canales de <br>contacto</span>
          </a>
        </li>
        <li>
          <a href="https://www.uninorte.edu.co/web/tesoreria">
            <img
              src="/documents/45052/47013/C-20544_SM_DCR_PWEB_footer-home_8.png/80207a26-8600-4cbd-6f89-e98466c2f6e2?t=1633993202408">
            <span>Pagos en línea</span>
          </a>
        </li>
      </ul>
    </div>

  </div>

  <div class="uninorte-footer__links">

    <#if entries?has_content>
      <ul class="uninorte-footer__mobile">
        <#list entries as navigationEntry>
          <li class="uninorte-footer__mobile-li">
            <a id="showChild" class="uninorte-footer__mobile-a">
              ${navigationEntry.getName()}
              <i class="fas fa-chevron-down"></i>
            </a>

            <#if navigationEntry.hasChildren()>
              <ul id="child-item" class="uninorte-footer__mobile-sub">
                <#list navigationEntry.getChildren() as navigationEntry_child>
                  <li class="uninorte-footer__mobile-sub-li">
                    <a class="uninorte-footer__mobile-sub-a" href="${navigationEntry_child.getURL()}">
                      ${navigationEntry_child.getName()}
                    </a>
                  </li>
                </#list>
              </ul>
            </#if>
          </li>
        </#list>
      </ul>
    </#if>
  </div>

  <div class="uninorte-footer__social">
    <ul>
      <li><a href="https://www.facebook.com/uninortecolombia" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
      <li><a href="https://www.instagram.com/uninorteco" target="_blank"><i class="fab fa-instagram"></i></a></li>
      <li><a href="https://twitter.com/uninorteco" target="_blank"><i class="fab fa-twitter"></i></a></li>
      <li><a href="https://co.linkedin.com/school/universidad-del-norte" target="_blank"><i class="fab fa-linkedin-in"></i></a></li>
      <li><a href="https://www.youtube.com/c/UninorteAcad%C3%A9mico" target="_blank"><i class="fab fa-youtube"></i></a></li>
      <li><a href="https://wa.me/573145905480" target="_blank"><i class="fab fa-whatsapp"></i></a></li>
    </ul>
  </div>

  <span class="uninorte-footer__directory">
    <a href="https://www.uninorte.edu.co/web/soyuninorte/directorio-de-redes" target="_blank">
      Directorio de redes
    </a>
  </span>

  <small class="uninorte-footer__watch">Vigilada Mineducación</small>
</div>