$( document ).ready(function() {


	//IMAGEN: ¿QUIENES SOMOS?
	chageIcon(1,'/images/icn_quienes_somos');
    //IMAGEN: NUESTROS SERVICIOS
    chageIcon(2,'/images/icn_nuestros_servicios');
    //IMAGEN: DONDE ESTAMOS
    chageIcon(3,'/images/icn_donde_estamos');
    //IMAGEN: CLIENTES
    chageIcon(4,'/images/icn_clientes');
    //IMAGEN: CONTACTO
    chageIcon(5,'/images/icn_contacto');

    $(".fancybox").on("click", function () {
        $.fancybox({
            href: '/images/pagina_construccion.png'
        });
    });

    $("#colums p a").on("click", function () {
        $.fancybox({
            href: '/images/pagina_construccion.png'
        });
    });    

});

function chageIcon(image,ruta)
{
	//ESTILO APLICADO AL PRIMER ELEMENTO QUE CONTIENE LA CLASE 'selectedMenuItem'
	if($('li#ima_'+image).hasClass('selectedMenuItem'))
      $('img#'+image).attr("src",ruta+"_orange.png");
    else
      $('img#'+image).attr("src",ruta+"_gris.png");


  	$('li').on('click', function() {
        $('img#'+image).attr("src",ruta+"_gris.png");
    });


  	//ESTILO CAMBIADO DEPENDIENDO DE LA SELECCION DEL MENU
	$('li#ima_'+image).bind('mouseover', function() {
        $('img#'+image).attr("src",ruta+"_orange.png");
    });
    $('li#ima_'+image).bind('mouseout', function() {
    	if($('li#ima_'+image).hasClass('selectedMenuItem'))
        	$('img#'+image).attr("src",ruta+"_orange.png");
        else
        	$('img#'+image).attr("src",ruta+"_gris.png");
    });
}


jQuery(function( $ ) {
                $( "#slider" ).rcarousel({
                    visible: 7,
                    step: 7
                });
                
                $( "#ui-carousel-next" )
                    .add( "#ui-carousel-prev" )
                    .hover(
                        function() {
                            $( this ).css( "opacity", 0.7 );
                        },
                        function() {
                            $( this ).css( "opacity", 1.0 );
                        }
                    );              
            });

jQuery(function($) {
                $("#slider_small").rcarousel({
                    visible: 2,
                    step: 2,
                    margin: 5,
                    navigation:{
                        next: "#ui-carousel-next2",
                        prev: "#ui-carousel-prev2"
                    }
                });
                
                $( "#ui-carousel-next2" )
                    .add( "#ui-carousel-prev2" )
                    .hover(
                        function() {
                            $( this ).css( "opacity", 0.7 );
                        },
                        function() {
                            $( this ).css( "opacity", 1.0 );
                        }
                    );                  
            });

$(function() {
  $('a[href*=#]:not([href=#]).paralax').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });
});