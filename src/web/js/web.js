$( document ).on('ready',function() {

    //CAMBIA LA DIRECCION DE CONTACTO EN HOME
    cambioDireccion();

	//IMAGEN: ¿QUIENES SOMOS?
	changeIcon(1,'/images/icn_quienes_somos');
    //IMAGEN: NUESTROS SERVICIOS
    changeIcon(2,'/images/icn_nuestros_servicios');
    //IMAGEN: DONDE ESTAMOS
    changeIcon(3,'/images/icn_donde_estamos');
    //IMAGEN: CLIENTES
    changeIcon(4,'/images/icn_clientes');
    //IMAGEN: CONTACTO
    changeIcon(5,'/images/icn_contacto');

    fancybox_window();

    changeCarousel();
    //sliderImage(7,7);
    paginaConstruccion();

    //captureWidth();

    changeLanguageName();
    //horizontalLine();

    $("#accordion").accordion();

    //validar_form();
   
    //$(".fancyzoom").on("click", function () {
        //$("a.fancyzoom").fancyzoom();
    //});

});


    
    $("mmm").mouseover(function(){
        
        //$("ul.list_menu li#ima_1").css("text-decoration","underline");


        console.log($(this).attr("mmm"));
        

    });
    



function changeLanguageName()
{
    var language = '';
    language = $('ul.pull-left.navlist li.active').text();

    if(language == 'Ingles')
    {
        
        $('ul.pull-left.navlist li a').text('Spanish');
        $("<li ->-</li>").insertBefore("ul.pull-left.navlist li.active");
        $('ul.pull-left.navlist li.active a').text('English');
        

    }
    else
    {
        $("<li>-</li>").insertAfter("ul.pull-left.navlist li.active");
        $('ul.pull-left.navlist li a').text('Ingles');
        $('ul.pull-left.navlist li.active a').text('Español');

        }
}

function captureWidth()
{
    var resolucion = '';
    resolucion = $(window).width();

    if(resolucion < '768')
    {
        sliderImage(2,2);         
    }
    else
    {
        sliderImage(7,7);
    }

    $(window).resize(function() {

        var resolucion = '';
        resolucion = $(window).width();

        if(resolucion < '768')
        {
            sliderImage(2,2);             
        }
        else
        {
            sliderImage(7,7);
        }
        console.log(resolucion);

    });
    
}

function changeCarousel()
{
    $('#yw0').addClass('slide');

    $('#yw0').prepend('<ol class="carousel-indicators">'+
        '<li data-target="#yw0" data-slide-to="0" class=""></li>'+
        '<li data-target="#yw0" data-slide-to="1" class=""></li>'+
        '<li data-target="#yw0" data-slide-to="2" class=""></li>'+
      '</ol>');
}

function changeIcon(image,ruta)
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

function fancybox_window() 
{

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
}

function sliderImage(cantidad,pasos)
{
    $( "#slider" ).rcarousel({
        visible: cantidad,
        step: pasos
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
}

function paginaConstruccion() 
{
    $('a[href*=#]:not([href=#]).paralax').click(function()
    {
        if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname)
        {
            var target = $(this.hash);
            target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
            if (target.length) 
            {
                $('html,body').animate({
                  scrollTop: target.offset().top
                }, 1000);
                return false;
            }
        }
    });
}

function horizontalLine()
{
    $(".list_menu_ingles").append("<li id='this-line'></li>");
   
    
    var $this= $("#this-line");
   
    $thisLine
        .width($(".selectedMenuItem").width())
        .css("left", $(".selectedMenuItem a").position().left)
        .data("origLeft", $thisLine.position().left)
        .data("origWidth", $thisLine.width());
       
    $(".list_menu_ingles li").find("a").hover(function() {
        $el = $(this);
        leftPos = $el.position().left;
        newWidth = $el.parent().width();
       
        $magicLine.stop().animate({
            left: leftPos,
            width: newWidth
        });
    }, function() {
        $thisLine.stop().animate({
            left: $thisLine.data("origLeft"),
            width: $thisLine.data("origWidth")
        });   
    });
}

function pasar()
{
        var url = "/site/email";
        $.ajax({
            type: "POST",
            url: url,
            data: $("#formulario").serialize(),
            success: function(data)
            {
               // alert(data);
                if(data){
                    $('#ok').modal('show');
                }else
                {
                    $('#error').modal('show');
                }
            }
        });
}

function validar_campo(cadena)
{       
    var letras=/^([0-9])*$/;
    if (cadena =="" || letras.test(cadena))
    {
        return false;
    }else
    {
        return true;
    }        
}


function validar_correo(cadena)
{       
    var cc=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/;
    if (cadena =="" || !cc.test(cadena))
    {
        //alert("malo");
        return false;
    }else
    {
         //alert("bien"); 
        return true;
    }        
}

function validar_numero(numero)
{       
    var num=/^[a-zA-Z]*$/;
    if (numero =="" || num.test(numero))
    {
            return false;
    }else
    {
        return true;
    }        
}

function mostrar_mensaje(boo,num)
{    
    if(boo==true)
    {
        $("#mensaje"+num).fadeOut();
    }else
    {
        $("#mensaje"+num).fadeIn();
    } 
}

function change(campo,num)
{
    console.log('entre');
        $(campo).on('change',function()
        {
            var letras=/^([0-9])*$/;
            if ($(this) =="" || letras.test($(this).val()))
            {
                $("#mensaje"+num).fadeIn();
            }else
            {
                $("#mensaje"+num).fadeOut();
            }
        });
}

function change_numero(campo,num)
{
    console.log('entre numero');
        $(campo).on('change',function()
        {
            var patron=/^[a-zA-Z]*$/;
            if ($(this) =="" || patron.test($(this).val()))
            {
                $("#mensaje"+num).fadeIn();
            }else
            {   
                $("#mensaje"+num).fadeOut();
            }
        });
}

//function validar_form()
//{
        change("#nombre",'1');
        change("#apellido",'2');
        change_numero("#telefono",'3');
        change("#correo",'4');
        change("#msj",'5');
        
    $("#boton_enviar").on('click',function()
    {   //var num=/^[a-zA-Z]*$/;
        var nombre=$("#nombre").val();
        //var letras=/^([0-9])*$/;
        var apellido=$("#apellido").val();
        var telefono=$("#telefono").val();
        var correo=$("#correo").val();
        var msj=$("#msj").val();
        var check = true;
        var arreglo= new Array();
        //----------------------------
        arreglo.push(validar_campo(nombre));
        mostrar_mensaje(arreglo[0],'1');
        //----------------------------
        arreglo.push(validar_campo(apellido));
        mostrar_mensaje(arreglo[1],'2');
        //----------------------------
        arreglo.push(validar_numero(telefono));
        mostrar_mensaje(arreglo[2],'3');
        //----------------------------
        arreglo.push(validar_correo(correo));
        mostrar_mensaje(arreglo[3],'4');
        //----------------------------
        arreglo.push(validar_campo(msj));
        mostrar_mensaje(arreglo[4],'5');
        //----------------------------  
        for (var i =0; i <= arreglo.length - 1; i++)
        {
            if(arreglo[i]== false)
            {
                check = false;
                console.log('false '+check);
            }else{
                console.log('true '+check);
            }
        }
        if(check == true){
            pasar(); 
            //console.log("1");
            $('#formulario').each (function(){
                 this.reset();
             });

            
            
            }

    });

     





            //letras=null;      
            //num=null;       
            //nombre=null;
            //apellidoval=null;
            //telefonoval=null;
            //correol=null;
            //msj=null;
//}