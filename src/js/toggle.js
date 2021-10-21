const showBoxSearch = (toggleId, togglenavId) => {
  const toggle = document.getElementById(toggleId),
  nav = document.getElementById(togglenavId);

  if(toggle && nav) {
    toggle.addEventListener('click', ()=> {
      nav.classList.toggle('show-search')
    })
  }
}

function removeClassShow () {
  const classSearch = document.getElementById("uninorte-search__box");
  classSearch.classList.remove("show-search");
}

/** Footer **/

$('.uninorte-footer__mobile-li ul, .uninorte-sidebar__mobile-li ul, .uninorte-sidebar__portals-li ul, .uninorte-sidebar__language-li ul').hide();
$(".uninorte-footer__mobile-li a, .uninorte-sidebar__mobile-li a, .uninorte-sidebar__portals-li a, .uninorte-sidebar__language-li a").click(function(e) {
  e.stopPropagation()
  const $parentLI = $(this).closest("li");
  const $other = $parentLI.siblings();
  const $myUL = $parentLI.find("ul");
  const $myToggle = $(this).find(".right");
  $other
    .find("ul").slideUp("100")
    .find("a span").removeClass("fa-caret-up").addClass("fa-caret-down");
  $myUL.slideToggle("100");
  $myToggle.toggleClass("fa-caret-up fa-caret-down");
});

const showBoxSearchMb = (toggleId, togglenavId) => {
  const toggle = document.getElementById(toggleId),
  nav = document.getElementById(togglenavId);

  if(toggle && nav) {
    toggle.addEventListener('click', ()=> {
      nav.classList.toggle('show-search')
    })
  }
}

function removeClassShowMb () {
  const classSearch = document.getElementById("uninorte-search__box-mb");
  classSearch.classList.remove("show-search");
}

const test = document.getElementById("close-search-mb");
if (test) {
  test.addEventListener("click", removeClassShowMb);
}

window.onload=function() {
  showBoxSearch('uninorte-search__icon', 'uninorte-search__box');
  document.getElementById("close-search").addEventListener("click", removeClassShow);

  showBoxSearchMb('uninorte-search__icon-mb', 'uninorte-search__box-mb');
  

}