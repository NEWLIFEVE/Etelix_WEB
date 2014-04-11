$( document ).ready(function() {

    //CAMBIA LA DIRECCION DE CONTACTO EN HOME
    cambioDireccion();

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

    $(".fancybox_ingles").on("click", function () {
        $.fancybox({
            href: '/images/pagina_construccion_ingles.jpg'
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

function cambioDireccion()
{
    $("img.pais").on("click", function () {

        var pais = '';
        var direccion = '';
        var telefono = '';
        var fax = '';

        pais = $(this).attr('id');

        if(pais == 'usa'){
            direccion = '444 Brickell Ave. Suite 51-845,';
            direccion2 = 'Miami FL 33131, USA.';
            telefono = 'Phone: +1 (305) 722.1112';
            fax = 'Fax: +1 (305) 722.1117';
        }

        if(pais == 'peru'){
            direccion = 'Jr. Dante 966 Surquillo,';
            direccion2 = 'Lima, Perú.';
            telefono = 'Tel\u00e9fono: + 51 (1) 641.9550';
            fax = 'Fax: + 51 (1) 641.9549';

        }

        if(pais == 'venezuela'){
            direccion = 'Av. Francisco de Miranda, Torre Delta, piso 10,';
            direccion2 = 'of. 10 A-B. Altamira, Caracas, Venezuela.';
            telefono = 'Tel\u00e9fono: +58 (212) 740-1112';
            fax = 'Fax: +58 (212) 740-1117';
        }

        $('p.direction').text(direccion);
        $('p.direction2').text(direccion2);
        $('p.telefono').text(telefono);
        $('p.fax').text(fax);


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