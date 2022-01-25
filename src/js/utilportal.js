

var uniJSIdiomaTrigger = document.getElementsByClassName('uni-riobit-js-idioma-trigger');

Array.prototype.forEach.call(uniJSIdiomaTrigger, function(e){
    e.addEventListener('click', function(){
        
        var portalesMenuWrapper = $(".js-portales-menu-wrapper");
        var portalesBtn = $(".js-portales-trigger");

  if ($(portalesBtn).attr("data-click-state") == 1) {
      
      $(portalesBtn).attr("data-click-state", 0);
      portalesMenuWrapper.css("width", "0");

    }


    }); 
});



