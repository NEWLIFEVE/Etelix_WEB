<?php /* @var $this Controller */ ?>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="language" content="en">
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0"> 

	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
	<!-- extensiones de utiliadad-->
	<?php $this->widget('application.extensions.blockui.JuiBlockUI');?>
	<!--  bootstrap  -->
	<?php Yii::setPathOfAlias('bootstrap', dirname(__FILE__).'/../extensions/bootstrap'); ?>
	<!--  bootstrap  -->
	<link rel="shortcut icon" href="<?php echo Yii::app()->request->baseUrl; ?>/images/favicon.ico" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/font-awesome.min.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/bootstrap-yii.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/jquery-ui-bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/jquery.fancybox-1.3.4.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/p3.css" />
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery.min.js"></script> 
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jqui-tb-noconflict.js"></script>
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/bootstrap.min.js"></script> 
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/bootbox.min.js"></script>
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/notify.min.js"></script>
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery.ba-bbq.min.js"></script>
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery.cookie.js"></script>
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery.fancybox-1.3.4.js"></script>	
	<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/modernizr.custom.17475.js"></script>
	<!-- menu 2-->

		<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/component.css" />
		<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/modernizr.custom.js"></script>
	<!-- slider-->
	<!-- get jQuery from the google apis -->
    <!--<script type="text/javascript" src="<?php //echo Yii::app()->request->baseUrl; ?>/js/jquery.js"></script>-->
    <script type='text/javascript' src='<?php echo Yii::app()->request->baseUrl; ?>/js/jquery-ui.js?ver=3.4.2'></script>
	<!-- CSS STYLE -->
    <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/style.css" media="screen" />
    <!-- jQuery KenBurn Slider  -->
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery.themepunch.plugins.min.js"></script>
    <script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery.themepunch.revolution.min.js"></script>
	<!-- REVOLUTION BANNER CSS SETTINGS -->
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/settings.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/captions.css" media="screen" />
	<!-- GOOGLE FONTS -->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,800,300,600' rel='stylesheet' type='text/css'>
	
</head>
<body>
<div class="container">
	<header>
        <ul class="pull-right navlist" id="yw1">
			<li class="flag spanish"><a href="/es/site/index">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</a></li>
			<li class="flag english"><a href="/en/site/index">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </a></li>
		</ul>
		              
		<div class="span2 offset9 inbox">
                <!-- <a href='#'><img src='/../images/logo_linkedin.png' hspace='10'></a>
                <a href='#'><img src='/../images/logo_twitter.png' vspace='2'></a> -->
        </div>
        <br>
        <div id="container-header" class="widget-container display">
			<div class="widget display" id="widget-1">
		    	<div class="container">
					<div class="row-fluid">
						<div class="span3">
							<a href="<?php echo Yii::app()->createUrl('/site/index');?>"><img alt="etelix" class="logo" src="images/logo_etelix.png" /></a>
						</div>


						<div class="span9">
							<div class="main clearfix">
								<nav id="menu" class="nav">					
									<ul>
										<li class='menu1'>
											<a href="<?php echo Yii::app()->createUrl('/site/index');?>"  class="active">
												
												<span>Inicio</span>
											</a>
										</li>
										<li class='menu2'>
											<a href="<?php echo Yii::app()->createUrl('/site/organitation');?>">
												
												<span>¿Quienes Somos?</span>
											</a>
										</li>
										<li class='menu3'>
											<a href="<?php echo Yii::app()->createUrl('/site/services');?>">
												
												<span>Nuestros Servicios</span>
											</a>
										</li>
										<li class='menu4'>
											<a href="<?php echo Yii::app()->createUrl('/site/map');?>">
												
												<span>Donde Estamos</span>
											</a>
										</li>
										<li class='menu5'>
											<a href="<?php echo Yii::app()->createUrl('/site/client');?>">
												
												<span>Clientes</span>
											</a>
										</li>
										<li class='menu6'>
											<a href="<?php echo Yii::app()->createUrl('/site/contact');?>">
												
												<span>Contacto</span>
											</a>
										</li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
					<div class="separator0">
						&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
					</div>
				</div>
			<div>
		</div>
	</header>



	<div id="content">
	 <!-- content view-->
		<?php echo $content; ?>
	</div><!-- content -->




	<div class="clear"></div>
	<!--footer -->
	<div class="row-fluid footer" id="footer">
		<div class="cols2 footer" style="background-color:#343434;">
			<div class="cols11">
				
				<p style="color:#FFFFFF;font-size: 1.5em !important;">
					<strong>Nuestras Oficinas</strong></p>
				<br>
				<p style="color:#FFFFFF;font-size: 1.0em;">
					<img alt="" class="pais" id="usa" src="<?php echo Yii::app()->request->baseUrl; ?>/images/usa_flag.png" style="width: 50px; height: 20px;">&nbsp;&nbsp;<img alt="" class="pais" id="peru" src="<?php echo Yii::app()->request->baseUrl; ?>/images/peru_flag.png" style="width: 50px; height: 20px;">&nbsp;&nbsp;<img alt="" class="pais" id="venezuela" src="<?php echo Yii::app()->request->baseUrl; ?>/images/venezuela_flag.png" style="width: 50px; height: 20px;"></p>
				<br>
				<p class="direction" style="color:#FFFFFF;font-size: 0.9em;margin-right:5px;">
					444 Brickell Ave. Suite 51-845,</p>
				<p class="direction2" style="color:#FFFFFF;font-size: 0.9em;margin-right:5px;">
					Miami FL 33131, USA.</p>
				<p class="telefono" style="color:#FFFFFF;font-size: 0.9em">
					Phone: +1 (305) 722.1112</p>
				<p class="fax" style="color:#FFFFFF;font-size: 0.9em">
					Fax: +1 (305) 722.1117&nbsp;</p>
			
			</div>
		</div>
		<div class="cols2 footer" style="background-color:#343434;">
			<div class="cols22">
				
					<p style="color:#FFFFFF;font-size: 0.8em;">
						<strong>Qui&eacute;nes Somos</strong></p>
					<p style="color:#FFFFFF;font-size: 0.8em;">
						<a href="<?php echo Yii::app()->createUrl('/site/organitation');?>" style="color:#FFFFFF">Nuestra Organizaci&oacute;n</a></p>
					<p style="color:#FFFFFF;font-size: 0.8em;">
						<a href="<?php echo Yii::app()->createUrl('/site/organitation');?>#mision_quienes_somos" style="color:#FFFFFF">Misi&oacute;n</a></p>
					<p style="color:#FFFFFF;font-size: 0.8em;">
						<a href="<?php echo Yii::app()->createUrl('/site/organitation');?>#vision_quienes_somos" style="color:#FFFFFF">Visi&oacute;n</a></p>
					<p style="color:#FFFFFF;font-size: 0.8em;">
						<a href="#" style="color:#FFFFFF">Equipo Directivo</a></p>
					<p style="color:#FFFFFF;font-size: 0.8em;">
						&nbsp; &nbsp;</p>
					<p style="color:#FFFFFF;font-size: 0.8em;">
						<strong>Presencia Comercial</strong></p>
					<p style="color:#FFFFFF;font-size: 0.8em;">
						<a href="<?php echo Yii::app()->createUrl('/site/map');?>" style="color:#FFFFFF">Mapa Interactivo</a></p>
			</div>
		</div>
		<div class="cols3 footer" style="background-color:#343434;">
			<div class="cols33">

				<div class="cols4">

					<p style="color:#FFFFFF;font-size: 0.8em;">
						<strong>Nuestros Servicios</strong></p>
					<p style="color:#FFFFFF;font-size: 0.8em;">
						<a href="<?php echo Yii::app()->createUrl('/site/services');?>#services" style="color:#FFFFFF">Servicios de Interconexi&oacute;n Internacional de Voz</a></p>
					<p style="color:#FFFFFF;font-size: 0.8em;">
						<a href="/<?php echo Yii::app()->createUrl('/site/services');?>#sms" style="color:#FFFFFF">SMS</a></p>
					<p style="color:#FFFFFF;font-size: 0.8em;">
						<a href="<?php echo Yii::app()->createUrl('/site/services');?>#data" style="color:#FFFFFF">Conectividad Internacional</a></p>
					<p style="color:#FFFFFF;font-size: 0.8em;">
						<a href="<?php echo Yii::app()->createUrl('/site/services');?>#contactcenter" style="color:#FFFFFF">Contact Center</a></p>
				</div>	
				<div class="cols4">

					<p style="color:#FFFFFF;font-size: 0.8em;">
						<a href="<?php echo Yii::app()->createUrl('/site/services');?>#pagos" style="color:#FFFFFF">Plataforma de Pagos</a></p>
					<p style="color:#FFFFFF;font-size: 0.8em;">
						<a href="<?php echo Yii::app()->createUrl('/site/services');?>#retail" style="color:#FFFFFF">Puntos de Venta Integrales</a></p>
					<p style="color:#FFFFFF;font-size: 0.8em;">
						<a href="<?php echo Yii::app()->createUrl('/site/services');?>#hosting" style="color:#FFFFFF">Servicios de Hosting</a></p>
					<p style="color:#FFFFFF;font-size: 0.8em;">
						<a href="<?php echo Yii::app()->createUrl('/site/services');?>#software" style="color:#FFFFFF">Desarrollo de Software</a></p>
					<p style="color:#FFFFFF;font-size: 0.8em;">
						<a href="<?php echo Yii::app()->createUrl('/site/services');?>#servprof" style="color:#FFFFFF">Servicios Profesionales</a></p>
					<p style="color:#FFFFFF;font-size: 0.8em;">
						&nbsp;&nbsp;</p>
				</div>	
			</div>
		</div>
		<div class="cols2 footer">
			<div style="background-color:#343434;margin: 16px 0 0 8px;min-height: 211px; padding-top:10px;">
				
				<p style="color:#FFFFFF;font-size: 0.8em;">
				</p>
				<p style="color:#FFFFFF;font-size: 0.8em;">
					<strong>Clientes</strong></p>
				<p style="color:#FFFFFF;font-size: 0.8em;">
					<a href="<?php echo Yii::app()->createUrl('/site/client');?>" style="color:#FFFFFF">Nuestros Clientes</a></p>
				<p style="color:#FFFFFF;font-size: 0.8em;">
					&nbsp; &nbsp;&nbsp;</p>
				<div class="correo">
					<a href="<?php echo Yii::app()->createUrl('/site/contact');?>" style="color:#FFFFFF;">Escr&iacute;benos &nbsp;<img alt="" src="<?php echo Yii::app()->request->baseUrl; ?>/images/white_sobre.png" style="width: 30px; height: 20px;" /></a>
				</div>
			</div>
		</div>


	</div>
	<div style="background-color:#343434;color:#FFFFFF;font-size: 1em;padding-top: 2%;" class="row-fluid">
		<p>
		</p>
		<center>
			2014 Etelix Group - Todos los derechos reservados </center>
		<p>
		</p>
	</div>
</div><!-- container -->
 	<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery.menuSlider.min.js"></script>
    <script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery.ui.core.js"></script>
    <!-- EFECTO DE CAROUSEL SLIDER IMAGE DEL HOME -->
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery.ui.rcarousel.js"></script>
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquerypp.custom.js"></script>
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery.elastislide.js"></script>
	<!--  JS DESARROLLADO  -->
	<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/web.js"></script>
	<!-- menu -->
	<script type="text/javascript">
	$( document ).ready(function() {
        var href = $(location).attr('href');
        var index = href.indexOf("site/index");
        var organitation = href.indexOf("site/organitation");
        var services = href.indexOf("site/services");
        var map = href.indexOf("site/map");
        var client = href.indexOf("site/client");
        var contact = href.indexOf("site/contact");
        if(index>0){
         $(".menu1").addClass("active");
  		 
        
         }else if(organitation>0){
          
            $(".menu2").addClass("active");
		  
        }else if(services>0){
         
            $(".menu3").addClass("active");
		   
        }else if(map>0){
         
           $(".menu4").addClass("active");
		   
        }else if(client>0){
          
            $(".menu5").addClass("active");
		   
        }else if(contact>0){
           $(".menu6").addClass("active");
          
		  
        }
        });
      </script>
      <script>
			//  The function to change the class
			var changeClass = function (r,className1,className2) {
				var regex = new RegExp("(?:^|\\s+)" + className1 + "(?:\\s+|$)");
				if( regex.test(r.className) ) {
					r.className = r.className.replace(regex,' '+className2+' ');
			    }
			    else{
					r.className = r.className.replace(new RegExp("(?:^|\\s+)" + className2 + "(?:\\s+|$)"),' '+className1+' ');
			    }
			    return r.className;
			};	

			//  Creating our button in JS for smaller screens
			var menuElements = document.getElementById('menu');
			menuElements.insertAdjacentHTML('afterBegin','<button type="button" id="menutoggle" class="navtoogle" aria-hidden="true"><span class="icon-menu">&nbsp;&nbsp;</span> Menu</button>');

			//  Toggle the class on click to show / hide the menu
			document.getElementById('menutoggle').onclick = function() {
				changeClass(this, 'navtoogle active', 'navtoogle');
			}

			// http://tympanus.net/codrops/2013/05/08/responsive-retina-ready-menu/comment-page-2/#comment-438918
			document.onclick = function(e) {
				var mobileButton = document.getElementById('menutoggle'),
					buttonStyle =  mobileButton.currentStyle ? mobileButton.currentStyle.display : getComputedStyle(mobileButton, null).display;

				if(buttonStyle === 'block' && e.target !== mobileButton && new RegExp(' ' + 'active' + ' ').test(' ' + mobileButton.className + ' ')) {
					changeClass(mobileButton, 'navtoogle active', 'navtoogle');
				}
			}
		</script>

  		<!-- slider-->      
 <script type="text/javascript">
            
            $( '#carousel' ).elastislide( {
                minItems : 2
            } );
            
        </script>   
        <script>
            $("#slideContainer2").menuSlider({thickness:"2px", speed:0.5, tStyle:"ease-out"});
        </script>
        <script>
            var _gaq=[['_setAccount','UA-42261367-1'],['_trackPageview']];
            (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
            g.src='//www.google-analytics.com/ga.js';
            s.parentNode.insertBefore(g,s)}(document,'script'));
        </script>
    <script type="text/javascript">
/*<![CDATA[*/
jQuery(function($) {
jQuery('[data-toggle=popover]').popover();
jQuery('body').tooltip({"selector":"[data-toggle=tooltip]"});
jQuery('#yw0').carousel();
});
/*]]>*/
</script>
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"beacon-2.newrelic.com","licenseKey":"34c6875537","applicationID":"3705949","transactionName":"MgZRYBNQV0FZBUZcCwtMclcVWFZcFzVbQQEmDF1AE15VXl0UHVwKAQZL","queueTime":0,"applicationTime":137,"ttGuid":"","agentToken":"","userAttributes":"","errorBeacon":"bam.nr-data.net","agent":"js-agent.newrelic.com\/nr-411.min.js"}</script>
</body>
</html>
