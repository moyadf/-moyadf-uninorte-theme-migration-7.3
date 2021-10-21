const header  = document.getElementById('heading-uninorte');
const logo_header = document.getElementById('logo_uni_header');
const logo_sticky = document.getElementById('logo_uni_sticky');

addClassHeader = () => {
  header.classList.add("sticky");
  logo_sticky.style.display = "block";
  logo_header.style.display = "none";
}

removeClassHeader = () => {
  header.classList.remove("sticky");
  logo_sticky.style.display = "none";
  logo_header.style.display = "block";

}

function stickyNavigation() {
  let getScrollposition = window.scrollY;
  if (getScrollposition > 0) {
      addClassHeader();
  } else {
      removeClassHeader();
  }
}

window.addEventListener('scroll', stickyNavigation);


/*==================== SHOW NAVBAR MOBILE ====================*/
const showMenu = (headerToggle, navbarId) =>{
    const toggleBtn = document.getElementById(headerToggle),
    nav = document.getElementById(navbarId)
    // Validate that variables exist
    if(headerToggle && navbarId){
        toggleBtn.addEventListener('click', ()=>{
            // We add the show-menu class to the div tag with the nav__menu class
            nav.classList.toggle('show-menu')
            // change icon
            toggleBtn.classList.toggle('fa-times')

            const headerContainer = document.getElementById('headerContainer');
            headerContainer.classList.toggle('move')

            const container = document.getElementById('wrapper');
            container.classList.toggle('overflow-uni-nav')
        })
    }
}
showMenu('nav-icon','sidebar')

