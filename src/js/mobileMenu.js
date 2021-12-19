/**
 * Mobile Menu Plugin instance
 */

var mobileMenuTarget = document.getElementById('sidebar');

if(mobileMenuTarget) {

  var slideout = new Slideout({
    'panel': document.getElementById('wrapper'),
    'menu': mobileMenuTarget,
    'padding': 300, // must be synced with $mobile-menu-size variable value on SASS settings.
    'tolerance': 70,
    'side': 'right'
  });

  // Avoid blinking menu when page is loaded
  slideout.on("beforeopen", function() {
    checkVisibility(mobileMenuTarget);
  });

  // Avoid blinking menu with touch events
  slideout.on('translatestart', function() {
    checkVisibility(mobileMenuTarget);
  });

  var checkVisibility = function(element) {
    if (jQuery(element).hasClass("d-none")) {
      return jQuery(element).removeClass("d-none");
    }
  }

  var hamburguerMenu = document.querySelector('.uninorte-navbar__toggle');
  var menuPanelNav = document.querySelector('.uninorte-sidebar');

  // Toggle button
  if (hamburguerMenu) {
    hamburguerMenu.addEventListener('click', function() {
      slideout.toggle();
    });
  }

  // Add and overlay panel
  function close(eve) {
    eve.preventDefault();
    slideout.close();
  }

  slideout
    .on('beforeopen', function() {
      this.panel.classList.add('slideout-panel-wrapper-open');
    })
    .on('open', function() {
      this.panel.addEventListener('click', close);
    })
    .on('beforeclose', function() {
      this.panel.classList.remove('slideout-panel-wrapper-open');
      this.panel.removeEventListener('click', close);
    });
}
