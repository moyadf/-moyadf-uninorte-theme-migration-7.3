
/** -------------------------
 * Uninorte Old theme JSs
 * --------------------------
 */

AUI().ready(
	'anim',
	'event-mouseenter',
	'event-outside',
	'liferay-navigation-interaction',
	'liferay-sign-in-modal',
	'transition',
	'liferay-hudcrumbs',
	function(A) {
		var Lang = A.Lang;

		var BODY = A.getBody();

		var WIN = A.getWin();
		
		var signIn = A.one('a#sign-in');

		if (signIn && signIn.getData('redirect') !== 'true') {
			signIn.plug(Liferay.SignInModal);
		}

		var hamburguerNode = A.one('.hamburger-icon');

		if (hamburguerNode) {
			hamburguerNode.on(
				'click',
				function() {
					var icon = hamburguerNode.one('.icon-align-justify');
					icon.toggleClass('icon-chevron-left');
					BODY.toggleClass('opened');
					hamburguerNode.toggleClass('open');
				}
			);
		};

		// Dockbar bubbles, if dockbar is present

		var portletDockbar = A.one('.portlet-dockbar');

		if (portletDockbar) {
			var toggleDockbar = A.one('a.user-avatar-link');
			var toggleDockbarLeave = A.one('.portlet-dockbar .dockbar');

			if (toggleDockbar) {
				toggleDockbar.on(
					'mouseenter',
					function() {
						BODY.removeClass('over');

						closingDockbar = toggleDockbarLeave.once(
							'clickoutside',
							function() {
								BODY.addClass('over');
							}
						);
					}
				);
			}
		}

		// Detecting mouse scroll direction

		var mousewheelDir = function(e) {
			var dir = e.wheelDelta > 0 ? 'scroll-up' : 'scroll-down';
			var ScrollPos = (WIN.get('docScrollY'));

			if (ScrollPos > 100) {
			    if (e.wheelDelta > 3) {
				    if (BODY.hasClass("scroll-down")) {
				    	BODY.removeClass("scroll-down");
				  		BODY.removeClass("scroll-down-heavy");
				    };
				    BODY.addClass("scroll-up-heavy");
				} else if (e.wheelDelta > 0) {
				    if (BODY.hasClass("scroll-down")) {
				    	BODY.removeClass("scroll-down");
				  		BODY.removeClass("scroll-down-heavy");
				    };
				    BODY.addClass("scroll-up");
				} else if (e.wheelDelta < -3) {
				    if (BODY.hasClass("scroll-up")) {
				    	BODY.removeClass("scroll-up");
				  		BODY.removeClass("scroll-up-heavy");
				    };
				    BODY.addClass("scroll-down-heavy");
				} else {
				    if (BODY.hasClass("scroll-up")) {
				    	BODY.removeClass("scroll-up");
				  		BODY.removeClass("scroll-up-heavy");
				    };
				    BODY.addClass("scroll-down");
				}
			};
		}

       //Blocks with fullHeightNodes

        var fullHeightNodes = A.all('.fullHeight');

        var fullHeightNodesCalc = function() {
            var winHeight = WIN.get('innerHeight');
            var marginTop = BODY.getStyle('margin-top');
            if (Lang.isUndefined(winHeight)) {
                winHeight = document.documentElement.clientHeight;
            }

            fullHeightNodes.each(
                function(node) {
                	node.setStyle('minHeight', (winHeight - Lang.toInt(marginTop)));
                    node.addClass('done');
                }
            );
        }

		//Blocks with fullCenter over previus block or over full windows height

		var fullCenter = A.all('.fullCenter');

        var fullCenterCalc = function() {
            fullCenter.each(
            	function(node) {
            		var parent = node.ancestor('div');

            		if (node.hasClass('fullWinCenter')) {
    			        var winHeight = WIN.get('innerHeight');
						if (Lang.isUndefined(winHeight)) {
							winHeight = document.documentElement.clientHeight;
						}

						var parentHeight = winHeight;
            		}
                    else {
						var parentHeight = parent.height();
            		}

                    var parentWidth = parent.width();
                    var nodeHeight = node.height();
                    var nodeWidth = node.width();

                    node.setStyle('top', (parentHeight/2)-(nodeHeight/2)+'px');
                    node.setStyle('left', (parentWidth/2)-(nodeWidth/2)+'px');
        		}
        	);
        }

        if (!fullHeightNodes.isEmpty()) {
            A.on('windowresize', fullHeightNodesCalc);
            A.on('windowresize', fullCenterCalc);
            fullHeightNodesCalc();
            fullCenterCalc();
        }

		// Creating portlets node list no navegate

		creationIndex = true;

		portletsIndex = A.one('.portletsIndex ul');

		// Node portlets on screen selector, to decide if create lateral index navigation
		var allPortletsNodes = A.all('#column-1>div>.portlet-boundary');
		var allPortletsNodesSize = allPortletsNodes.size();

		// Theme setting add class to show styles
		var lateralPortletsIndexPresent = A.one('.lateral-portlets-index');

		//console.log('PORTLETS on screen: '+allPortletsNodesSize);

		// Create lateral portlets index

		var fullSizeNodesCalc = function () {
			var autoHeight = A.one('.portlets-auto-height');

			if (autoHeight) {
				var winHeight = WIN.get('innerHeight');
				var marginTop = BODY.getStyle('margin-top');

				if (Lang.isUndefined(winHeight)) {
					winHeight = document.documentElement.clientHeight;
				}
			}

			allPortletsNodes.each(
				function(node,i) {
					var thisNode = node;

					if (autoHeight) {
						node.setStyle('minHeight', (winHeight - Lang.toInt(marginTop)));
					}

					var gettitle = thisNode.one('.portlet-title-text');

					if (!gettitle) {
						var gettitle = thisNode.one('.portlet-title-default');

						if (gettitle) {
							var title = gettitle.text();
						} else {
							var title = "Add .portlet-title-text in your portlet";
						};

					} else {
						var title = gettitle.text();
					};

					if (creationIndex) {
						var nodeWidth = (100 / allPortletsNodesSize);
						node.prepend('<span id="portletIndexID'+i+'"></span>');
						portletsIndex.append('<li style="width:'+nodeWidth+'%"><a href="#portletIndexID'+i+'" class="scroll-animate portletIndex'+i+'">'+title+'</a></li>');
					};
				}
			);
		}

 		// Find POV to mark portletIndex

		var findPOV = function () {
			var ScrollPos = (WIN.get('docScrollY'));
			allPortletsNodes.each(
				function(node,i) {
					var nodeHeight = (node.height());
					var marginTop = BODY.getStyle('margin-top');
					var marginTopInt = (Lang.toInt(marginTop)+20);
					var nodePosition = (node.getY());

					if (ScrollPos > (nodePosition-marginTopInt) && ScrollPos < (nodePosition+nodeHeight)) {
						var numberSlideToGet = "portletIndex"+i;
						A.all('.portletsIndex li').removeClass('aactive');
						A.one('.portletsIndex .'+numberSlideToGet+'').ancestor().addClass('aactive');
					}
				}
			);
		}

		// Functions called on resize and scroll

		if (allPortletsNodesSize >= 2 && lateralPortletsIndexPresent) {
			BODY.addClass('lateral-portlets-index-ready');
			A.on('windowresize', fullSizeNodesCalc);
			fullSizeNodesCalc();
			creationIndex = false;

			A.on('scroll', findPOV);
            findPOV();
		}



		// remove loading animation
        BODY.addClass('loaded');

		// Scroll animate to hash

		A.all('.scroll-animate').on(
			'click',
			function(animScroll) {
				var instance = this;
				var marginTop = BODY.getStyle('margin-top');

				var node = animScroll.currentTarget;
				var section = A.one(node.get('hash'));

				if (section) {
					var scrollTo = (Lang.toInt(section.getY()) - Lang.toInt(marginTop));
					animScroll.preventDefault();

					new A.Anim(
						{
							duration: 0.3,
							easing: 'easeBoth',
							node: 'win',
							to: {
								scroll: [0, scrollTo]
							}
						}
					).run();
				}
			}
		);

		var magicMouseScrollPresent = A.one('.magic-mouse-scroll');

		if (magicMouseScrollPresent) {
			A.on('mousewheel', mousewheelDir);
		};
	}
);

/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function topbar_menu(id) {
    document.getElementById(id).classList.toggle("show");
}

// Close the dropdown menu if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches(".dropdown-topmenu")) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}


/** -------------------------
 * Uninorte New Theme (2019)
 * --------------------------
 */

 /**
  * Liferay classic theme
  */
AUI().ready(
	'liferay-hudcrumbs', 'liferay-navigation-interaction', 'liferay-sign-in-modal',
	function(A) {
		var navigation = A.one('#navigation');

		// if (navigation) {
		// 	navigation.plug(Liferay.NavigationInteraction);
		// }

		var signIn = A.one('li.sign-in a');

		if (signIn && signIn.getData('redirect') !== 'true') {
			signIn.plug(Liferay.SignInModal);
		}
	}
);

/**
 * Uninorte
 */

;(function () {

	var win = $(window),
        html = $('html'),
		body = $('body'),
		wrapper = $('#wrapper'),
		header = $('.js-header'),
		headerHomeStickyLogo = $('.js-header-home-sticky-logo');

	/**
	 * Sticky Header
	 */
	function stickyHeader () {
		
		var headerHomeLogo = $('.js-header-home-logo'),
			headerHomeMenu = $('.js-header-home-menu'),

			fadeAnimationTime = 100;

			if(headerHomeStickyLogo.hasClass('d-none')) {
				headerHomeStickyLogo.removeClass('d-none');
			}

		if (win.scrollTop() >= 5 && win.width() >= 600) {

			header.addClass('is-scrolling');
			headerHomeLogo.fadeOut(fadeAnimationTime);
			headerHomeStickyLogo.fadeIn(fadeAnimationTime);
			headerHomeMenu.addClass('sticky-header');

		} else {
			
			header.removeClass('is-scrolling');
			headerHomeLogo.fadeIn(fadeAnimationTime);
			headerHomeStickyLogo.fadeOut(fadeAnimationTime);
			headerHomeMenu.removeClass('sticky-header');
		}
	}
	
	win.scroll(stickyHeader);
	
	stickyHeader();

	if(!headerHomeStickyLogo.hasClass('d-none')) {
		headerHomeStickyLogo.addClass('d-none');
	}

	/**
	 * Pre Header
	 */

	 function portalesMenuInit() {

		var	portalesMenuWrapper = $('.js-portales-menu-wrapper'),
			portalesMenu = $('.js-portales-menu'),
			portalesBtn = $('.js-portales-trigger');

		portalesBtn.off('click').on('click', function(e) {

			if($(this).attr('data-click-state') == 1) {

				$(this).attr('data-click-state', 0);
				portalesMenuClose();

			} else {

				$(this).attr('data-click-state', 1);
				portalesMenuOpen();
			}

			e.stopPropagation();
			
		});

		$('body').click(function() {
			portalesMenuClose();
			portalesBtn.attr('data-click-state', 0);
		});

		function portalesMenuOpen() {
			portalesMenuWrapper.css('width', portalesMenu.innerWidth());
		}

		function portalesMenuClose() {
			portalesMenuWrapper.css('width', '0');
		}
	 }

	$(document).ready(function(){
		portalesMenuInit();
	});

	/**
	 * Header Search
	 */

	function headerSearchInit() {

		var headerSearchBtn = $('.js-header-search-btn'),
			headerSearchWrapper = $('.js-header-search-wrapper'),
			headerSearchClose = $('.js-header-search-close');

			headerSearchBtn.off('click').on('click', function() {
			
				headerSearchWrapper.toggleClass('search-box--open');
			});

			headerSearchClose.off('click').on('click', function() {
			
				headerSearchWrapper.removeClass('search-box--open');
			});
	}

	$(document).ready(function(){
		headerSearchInit();
	});

})(document, window, jQuery);