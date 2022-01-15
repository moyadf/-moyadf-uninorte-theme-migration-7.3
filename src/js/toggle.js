$( document ).ready(function() {

var showBoxSearch = (toggleId, togglenavId) => {
  var toggle = document.getElementById(toggleId),
  nav = document.getElementById(togglenavId);

  if(toggle && nav) {
    toggle.addEventListener('click', ()=> {
      nav.classList.toggle('show-search')
    })
  }
}

function removeClassShow () {
  var classSearch = document.getElementById("uninorte-search__box");
  classSearch.classList.remove("show-search");
}

/** Footer **/

$('.uninorte-footer__mobile-li ul, .uninorte-sidebar__mobile-li ul, .uninorte-sidebar__portals-li ul, .uninorte-sidebar__language-li ul').hide();
$(".uninorte-footer__mobile-li a, .uninorte-sidebar__mobile-li a, .uninorte-sidebar__portals-li a, .uninorte-sidebar__language-li a").click(function(e) {
  e.stopPropagation()
  var $parentLI = $(this).closest("li");
  var $other = $parentLI.siblings();
  var $myUL = $parentLI.find("ul");
  var $myToggle = $(this).find(".right");
  $other
    .find("ul").slideUp("100")
    .find("a span").removeClass("fa-caret-up").addClass("fa-caret-down");
  $myUL.slideToggle("100");
  $myToggle.toggleClass("fa-caret-up fa-caret-down");
});

var showBoxSearchMb = (toggleId, togglenavId) => {
  var toggle = document.getElementById(toggleId),
  nav = document.getElementById(togglenavId);

  if(toggle && nav) {
    toggle.addEventListener('click', ()=> {
      nav.classList.toggle('show-search')
    })
  }
}

function removeClassShowMb () {
  var classSearch = document.getElementById("uninorte-search__box-mb");
  classSearch.classList.remove("show-search");
}

var test = document.getElementById("close-search-mb");
if (test) {
  test.addEventListener("click", removeClassShowMb);
}


  showBoxSearch('uninorte-search__icon', 'uninorte-search__box');
  document.getElementById("close-search").addEventListener("click", removeClassShow);

  showBoxSearchMb('uninorte-search__icon-mb', 'uninorte-search__box-mb');
  






});