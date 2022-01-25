

var uniJSIdiomaTrigger = document.getElementsByClassName('uni-riobit-js-idioma-trigger');

Array.prototype.forEach.call(uniJSIdiomaTrigger, function(e){
    e.addEventListener('click', function(){
        
        var portalesMenuWrapper = $(".js-portales-menu-wrapper");
        var portalesBtn = $(".js-portales-trigger");

  
  console.log("antes del if para entrar a preguntar si esta abierto");
  
  if ($(portalesBtn).attr("data-click-state") == 1) {
      
      console.log("dentro del if antes de setear ");

      $(portalesBtn).attr("data-click-state", 0);

      console.log("despues  del if supuestamente seteado ");


      portalesMenuWrapper.css("width", "0");

    }


    }); 
});



