const showBoxSearch = (toggleId, togglenavId) => {
  const toggle = document.getElementById(toggleId),
  nav = document.getElementById(togglenavId);

  if(toggle && nav) {
    toggle.addEventListener('click', ()=> {
      nav.classList.toggle('show-search')
    })
  }
}

showBoxSearch('uninorte-search__icon', 'uninorte-search__box');

function removeClassShow () {
  const classSearch = document.getElementById("uninorte-search__box");
  classSearch.classList.remove("show-search");
}
document.getElementById("close-search").addEventListener("click", removeClassShow);

/** Footer Mobile **/
/*const links = document.querySelectorAll('.uninorte-footer__mobile li a');

links.forEach((link) => {
  link.addEventListener('click', () => {
    const notClickedLinks = Array.from(links).filter((notClickedLink) => {
      return notClickedLink !== link;
    });

    notClickedLinks.forEach((notClickedLink) => {
      notClickedLink.classList.remove('active');
    });

    link.classList.add('active');
  });
});*/

$('.uninorte-footer__mobile-li ul').hide();
$(".uninorte-footer__mobile-li a").click(function(e) {
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