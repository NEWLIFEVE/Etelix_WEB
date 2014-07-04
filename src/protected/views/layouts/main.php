<?php /* @var $this Controller */ ?>
<!DOCTYPE html>
<html>
<head>
<!--<script type="text/javascript">window.NREUM||(NREUM={}),__nr_require=function(t,n,e){function r(e){if(!n[e]){var o=n[e]={exports:{}};t[e][0].call(o.exports,function(n){var o=t[e][1][n];return r(o?o:n)},o,o.exports)}return n[e].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<e.length;o++)r(e[o]);return r}({D5DuLP:[function(t,n){function e(t,n){var e=r[t];return e?e.apply(this,n):(o[t]||(o[t]=[]),void o[t].push(n))}var r={},o={};n.exports=e,e.queues=o,e.handlers=r},{}],handle:[function(t,n){n.exports=t("D5DuLP")},{}],G9z0Bl:[function(t,n){function e(){var t=l.info=NREUM.info;if(t&&t.agent&&t.licenseKey&&t.applicationID&&p&&p.body){l.proto="https"===f.split(":")[0]||t.sslForHttp?"https://":"http://",i("mark",["onload",a()]);var n=p.createElement("script");n.src=l.proto+t.agent,p.body.appendChild(n)}}function r(){"complete"===p.readyState&&o()}function o(){i("mark",["domContent",a()])}function a(){return(new Date).getTime()}var i=t("handle"),u=window,p=u.document,s="addEventListener",c="attachEvent",f=(""+location).split("?")[0],l=n.exports={offset:a(),origin:f,features:[]};p[s]?(p[s]("DOMContentLoaded",o,!1),u[s]("load",e,!1)):(p[c]("onreadystatechange",r),u[c]("onload",e)),i("mark",["firstbyte",a()])},{handle:"D5DuLP"}],loader:[function(t,n){n.exports=t("G9z0Bl")},{}]},{},["G9z0Bl"]);</script>-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="language" content="en">
<!-- blueprint CSS framework -->
<!--<link rel="stylesheet" type="text/css" href="<?php //echo Yii::app()->request->baseUrl; ?>/css/screen.css" media="screen, projection">
<link rel="stylesheet" type="text/css" href="<?php //echo Yii::app()->request->baseUrl; ?>/css/print.css" media="print">-->
<!--[if lt IE 8]>
<link rel="stylesheet" type="text/css" href="<?php //echo Yii::app()->request->baseUrl; ?>/css/ie.css" media="screen, projection">
<![endif]
<link rel="stylesheet" type="text/css" href="<?php //echo Yii::app()->request->baseUrl; ?>/css/main.css">
<link rel="stylesheet" type="text/css" href="<?php //echo Yii::app()->request->baseUrl; ?>/css/form.css">
-->
<title><?php echo CHtml::encode($this->pageTitle); ?></title>
<!-- extensiones de utiliadad-->
<?php $this->widget('application.extensions.blockui.JuiBlockUI');?>
<!--  bootstrap  -->
<!-- <link rel="stylesheet" type="text/css" href="<?php //echo Yii::app()->request->baseUrl; ?>/css/bootstrap.css" />-->
<?php //Yii::app()->clientScript->registerCoreScript('jquery'); ?>
<?php //Yii::app()->clientScript->registerScriptFile(Yii::app()->request->baseUrl.'/js/bootstrap.js',CClientScript::POS_END); ?>
<?php Yii::setPathOfAlias('bootstrap', dirname(__FILE__).'/../extensions/bootstrap'); ?>
<!--  bootstrap  -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
<link rel='stylesheet' type='text/css' href='<?php echo Yii::app()->request->baseUrl; ?>/css/menu.css' />
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
							<img alt="etelix" class="logo" src="images/logo_etelix.png" />
						</div>


						<div class="span9">
						    <div id='cssmenu'>
								<ul class="list_menu">
								   
								   <li class='menu1'><span><a href="<?php echo Yii::app()->createUrl('/site/index');?>">
										
										Inicio</a></span></li>
								   <li class="menu2"><span><a href="<?php echo Yii::app()->createUrl('/site/organitation');?>" >
										
										¿Quienes Somos?</a></span></li>
								   <li class="menu3"><span><a href="<?php echo Yii::app()->createUrl('/site/services');?>" >
										
										Nuestros Servicios</a></span></li>
								   <li class="menu4"><span><a href="<?php echo Yii::app()->createUrl('/site/map');?>" >
										
										Donde Estamos</a></span></li>
								   <li class="menu5"><span><a href="<?php echo Yii::app()->createUrl('/site/client');?>" >
										
										Clientes</a></span></li>
								   <li class='menu6'><span><a href="<?php echo Yii::app()->createUrl('/site/contact');?>" >
										
										Contacto</a></span></li>
								</ul>
							</div>
							<!--<ul class="list_menu">
								<li class="selectedMenuItem" id="ima_1">
									<a href="<?php //echo Yii::app()->createUrl('/site/index');?>">
										<p  class="menu1">
										Inicio</p></a>
								</li>
								<li id="ima_2">
									<a href="<?php //echo Yii::app()->createUrl('/site/organitation');?>" >
										<p class="menu2">
										¿Quienes Somos?</p></a>
								</li>
								<li id="ima_3">
									<a href="<?php //echo Yii::app()->createUrl('/site/services');?>" >
										<p class="menu3">
										Nuestros Servicios</p></a>
								</li>
								<li id="ima_4">
									<a href="<?php //echo Yii::app()->createUrl('/site/map');?>" >
										<p class="menu4">
										Donde Estamos</p></a>
								</li>
								<li id="ima_5">
									<a href="<?php //echo Yii::app()->createUrl('/site/client');?>" >
										<p  class="menu5">
										Clientes</p></a>
								</li>
								<li id="ima_6">
									<a href="<?php // echo Yii::app()->createUrl('/site/contact');?>" >
										<p  class="menu6">
										Contacto</p></a>
								</li>
							</ul>-->
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
		<div class="cols footer" style="background-color:#343434;">
			<p style="color:#ec6b18;font-size: 1em;">
				&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>
			<p style="color:#FFFFFF;font-size: 1.5em !important;">
				<strong>Cont&aacute;ctanos</strong></p>
			<br />
			<p style="color:#FFFFFF;font-size: 1.0em;">
				<img alt="" class="pais" id="usa" src="<?php echo Yii::app()->request->baseUrl; ?>/images/usa_flag.png" style="width: 50px; height: 20px;" />&nbsp;&nbsp;<img alt="" class="pais" id="peru" src="<?php echo Yii::app()->request->baseUrl; ?>/images/peru_flag.png" style="width: 50px; height: 20px;" />&nbsp;&nbsp;<img alt="" class="pais" id="venezuela" src="<?php echo Yii::app()->request->baseUrl; ?>/images/venezuela_flag.png" style="width: 50px; height: 20px;" /></p>
			<br />
			<p class="direction" style="color:#FFFFFF;font-size: 0.9em;margin-right:5px;">
				444 Brickell Ave. Suite 51-845,</p>
			<p class="direction2" style="color:#FFFFFF;font-size: 0.9em;margin-right:5px;">
				Miami FL 33131, USA.</p>
			<p class="telefono" style="color:#FFFFFF;font-size: 0.9em">
				Phone: +1 (305) 722.1112</p>
			<p class="fax" style="color:#FFFFFF;font-size: 0.9em">
				Fax: +1 (305) 722.1117&nbsp;</p>
			<br />
			<p>
			</p>
			
			<p>
			</p>
			<p>
				&nbsp;&nbsp;</p>
		</div>
		<div class="cols footer" id="div_center" style="background-color:#343434;">
			<div class="row-fluid">
				<div class="span2" style="background-color:#343434;color:#FFFFFF;width:40%;margin-right:5px;">
					<p style="color:#FFFFFF;font-size: 0.9em;">
						<strong>&nbsp; &nbsp; &nbsp; &nbsp;</strong></p>
					<p style="color:#FFFFFF;font-size: 0.8em;">
						<strong>Qui&eacute;nes Somos</strong></p>
					<p style="color:#FFFFFF;font-size: 0.8em;">
						<a href="<?php echo Yii::app()->createUrl('/site/organitation');?>" style="color:#FFFFFF">Nuestra Organizaci&oacute;n</a></p>
					<p style="color:#FFFFFF;font-size: 0.8em;">
						<a href="<?php echo Yii::app()->createUrl('/site/organitation');?>#mision_quienes_somos" style="color:#FFFFFF">Misi&oacute;n</a></p>
					<p style="color:#FFFFFF;font-size: 0.8em;">
						<a href="<?php echo Yii::app()->createUrl('/site/organitation');?>#vision_quienes_somos" style="color:#FFFFFF">Visi&oacute;n</a></p>
					<p style="color:#FFFFFF;font-size: 0.8em;">
						&nbsp; &nbsp;</p>
					<p style="color:#FFFFFF;font-size: 0.8em;">
						<strong>D&oacute;nde Estamos</strong></p>
					<p style="color:#FFFFFF;font-size: 0.8em;">
						<a href="<?php echo Yii::app()->createUrl('/site/map');?>" style="color:#FFFFFF">Mapa Interactivo</a></p>
				</div>
				<div class="span2" style="background-color:#343434;color:#FFFFFF;width:50%;margin-right:5px;">
					<p style="color:#FFFFFF;font-size: 0.8em;">
						<strong>&nbsp; &nbsp; &nbsp; &nbsp;</strong></p>
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
		<div class="cols footer">
			<p style="color:#FFFFFF;font-size: 0.8em;">
				&nbsp; &nbsp;&nbsp;</p>
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
	<div style="background-color:#343434;color:#FFFFFF;font-size: 1em;padding-top: 2%;">
		<p>
		</p>
		<center>
			<strong>Derechos Reservados Etelix Group 2014</strong></center>
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
	<script src="js/web.js"></script>
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
	<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"beacon-2.newrelic.com","licenseKey":"34c6875537","applicationID":"3705949","transactionName":"MgZRYBNQV0FZBUZcCwtMclcVWFZcFzVbQQEmDF1AE15VXl0UHVwKAQZL","queueTime":0,"applicationTime":126,"ttGuid":"","agentToken":"","userAttributes":"","errorBeacon":"bam.nr-data.net","agent":"js-agent.newrelic.com\/nr-411.min.js"}</script></body>
</body>
</html>
