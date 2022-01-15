
$( document ).ready(function() {


var header = document.getElementById("heading-uninorte");
var headerMobile = document.getElementById("headerContainer");
var logo_header = document.getElementById("logo_uni_header");
var logo_sticky = document.getElementById("logo_uni_sticky");

addClassHeader = () => {
  header.classList.add("sticky");
  headerMobile.classList.add("sticky");
  logo_sticky.style.display = "block";
  logo_header.style.display = "none";
};

removeClassHeader = () => {
  header.classList.remove("sticky");
  headerMobile.classList.remove("sticky");
  logo_sticky.style.display = "none";
  logo_header.style.display = "block";
};

function stickyNavigation() {
  let getScrollposition = window.scrollY;
  if (getScrollposition > 0) {
    addClassHeader();
  } else {
    removeClassHeader();
  }
}

window.addEventListener("scroll", stickyNavigation);


});