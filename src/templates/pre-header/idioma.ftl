<!--<a class="uni-pre-header__menu-item dropdown-toggle" data-toggle="dropdown" href="#">
  <img class="uni-svg-icon uni-icon-pre-header" src="${images_folder}/uninorte/icons/ico-idiomas.svg"
    alt="Icon idiomas">
  Idiomas
  <span class="caret"></span>
</a>-->

<div id="google_translate_element"></div>

<script type="text/javascript">
  function googleTranslateElementInit() {
    new google.translate.TranslateElement({ pageLanguage: 'es', includedLanguages: 'en,fr,de,es', layout: google.translate.TranslateElement.InlineLayout.SIMPLE }, 'google_translate_element');
  }

</script>

<script type="text/javascript"
  src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

<script>
  $(document).ready(function () {
    $('#google_translate_element').bind('DOMNodeInserted', function (event) {
      $('.goog-te-menu-value span:first').html('Idiomas');
      $('.goog-te-menu-frame.skiptranslate').on('load', function () {
        setTimeout(function () {
          $('.goog-te-menu-frame.skiptranslate').contents().find('.goog-te-menu2-item-selected .text').html('Idiomas');
        }, 100);
      });
    });
  });
</script>

<style type="text/css">
  /* OVERRIDE GOOGLE TRANSLATE WIDGET CSS BEGIN */

  div#google_translate_element {
    margin-top: 5px !important;
  }

  div#google_translate_element div.goog-te-gadget-simple {
    border: none;
    background-color: transparent;
    /*background-color: #17548d;*/
    /*#e3e3ff*/
  }

  div#google_translate_element div.goog-te-gadget-simple a.goog-te-menu-value:hover {
    text-decoration: none;
  }

  div#google_translate_element div.goog-te-gadget-simple a.goog-te-menu-value span {
    color: #3c3c3b;
  }

  div#google_translate_element div.goog-te-gadget-simple a.goog-te-menu-value span:hover {

    color: #3c3c3b;

  }

  .goog-te-gadget-icon {
    /*display: none !important;*/
    margin-left: 0px !important;
    margin-right: 0px !important;
    width: 22px !important;
    height: 22px !important;
    padding-right: 5px !important;
    /*background:url("img/icoidiomas.png") 0 0 no-repeat !important;*/
    background:url("${images_folder}/uninorte/icons/ico-idiomas.svg") 0 0 no-repeat !important;
  }

  /* Remove the down arrow */
  /* when dropdown open */
  div#google_translate_element div.goog-te-gadget-simple a.goog-te-menu-value span[style="color: rgb(213, 213, 213);"] {
    display: none;
    font-family: "open_sansbold";
    color: #3c3c3b;
    padding: 10px;
  }

  div#google_translate_element div.goog-te-gadget-simple a.goog-te-menu-value span {
    color: #3c3c3b !important;
  }

  /* after clicked/touched */
  div#google_translate_element div.goog-te-gadget-simple a.goog-te-menu-value span[style="color: rgb(118, 118, 118);"] {
    display: none;
    font-family: "open_sansbold";
    color: #3c3c3b;
    padding: 10px;
  }

  /* on page load (not yet touched or clicked) */
  div#google_translate_element div.goog-te-gadget-simple a.goog-te-menu-value span[style="color: rgb(155, 155, 155);"] {
    display: none;
    font-family: "open_sansbold";
    color: #3c3c3b;
    padding: 10px;
  }

  /* Remove span with left border line | (next to the arrow) in Chrome & Firefox */
  div#google_translate_element div.goog-te-gadget-simple a.goog-te-menu-value span[style="border-left: 1px solid rgb(187, 187, 187);"] {
    display: none;
  }

  /* Remove span with left border line | (next to the arrow) in Edge & IE11 */
  div#google_translate_element div.goog-te-gadget-simple a.goog-te-menu-value span[style="border-left-color: rgb(187, 187, 187); border-left-width: 1px; border-left-style: solid;"] {
    display: none;
  }

  /* HIDE the google translate toolbar */
  .goog-te-banner-frame.skiptranslate {
    display: none !important;
  }

  div#google_translate_element div.goog-te-gadget-simple a.goog-te-menu-value span:hover {
    color: black;
  }

  body {
    top: 0px !important;
  }

  .goog-te-gadget {
    padding-top: 4px !important;
  }

  /* OVERRIDE GOOGLE TRANSLATE WIDGET CSS END */
</style>

<div id="google_translate_element"></div>
<script type="text/javascript">
  function googleTranslateElementInit() {
    new google.translate.TranslateElement({ pageLanguage: 'es', includedLanguages: 'en,fr,de,es', layout: google.translate.TranslateElement.InlineLayout.SIMPLE }, 'google_translate_element');
  }

</script>