<style>
			* {
				margin:0; 
				padding:0;
			}

			#overlay {
				position:fixed; 
				top:0;
				left:0;
				width:100%;
				height:100%;
				background:#000;
				opacity:0.5;
				filter:alpha(opacity=50);
			}

			#modal {
				position:absolute;
				background:url(tint20.png) 0 0 repeat;
				background:rgba(0,0,0,0.2);
				border-radius:14px;
				padding:8px;
			}

			/*#content {
				border-radius:8px;
				background:#fff;
				padding:20px;
			}*/

			#close {
				position:absolute;
				background:url(../web/images/close.png) 0 0 no-repeat;
				width:24px;
				height:27px;
				display:block;
				text-indent:-9999px;
				top:-7px;
				right:-7px;
			}
		</style>
<script>
			var modal = (function(){
				var 
				method = {},
				$overlay,
				$modal,
				$content,
				$close;

				// Center the modal in the viewport
				method.center = function () {
					var top, left;

					top = Math.max($(window).height() - $modal.outerHeight(), 0) / 2;
					left = Math.max($(window).width() - $modal.outerWidth(), 0) / 2;

					$modal.css({
						top:top + $(window).scrollTop(), 
						left:left + $(window).scrollLeft()
					});
				};

				// Open the modal
				method.open = function (settings) {
					$content.empty().append(settings.content);

					$modal.css({
						width: settings.width || 'auto', 
						height: settings.height || 'auto'
					});

					method.center();
					$(window).bind('resize.modal', method.center);
					$modal.show();
					$overlay.show();
				};

				// Close the modal
				method.close = function () {
					$modal.hide();
					$overlay.hide();
					$content.empty();
					$(window).unbind('resize.modal');
				};

				// Generate the HTML and add it to the document
				$overlay = $('<div id="overlay"></div>');
				$modal = $('<div id="modal"></div>');
				$content = $('<div id="contentt" style="border-radius:8px;background:#fff;padding:20px;color:#3A5A9A;"></div>');
				$close = $('<a id="close" href="#">close</a>');

				$modal.hide();
				$overlay.hide();
				$modal.append($content, $close);

				$(document).ready(function(){
					$('body').append($overlay, $modal);						
				});

				$close.click(function(e){
					e.preventDefault();
					method.close();
				});

				return method;
			}());

			// Wait until the DOM has loaded before querying the document
			$(document).ready(function(){

				$.get('ajax.html', function(data){
					modal.open({content: data});
				});

				$('a#howdy').click(function(e){
					modal.open({content: "Hows it going?"});
					e.preventDefault();
				});
			});
		</script>

<div id="content2"><div class="widget display" id="widget-38">
    <div class="fondo">
	<div class="titulo">
		Contáctanos</div>

	 <?php
    	foreach(Yii::app()->user->getFlashes() as $key => $message) {
//        echo '<div class="alert alert-success">
		echo '<div style="margin:25px 0px 0px 0px;"><div class="alert alert-warnig">
        <button type="button" class="close" data-dismiss="alert">×</button>
        ' . $message . "</div></div>";
    }
    
	?>
	<form action="#" id="formulario" method="POST">
		<div class="cuadro">
			<div class="display divs bajar">
				<div class="campos">
					<p class="izquierda posicionarmovil">
						Nombre</p>
					<!-- INPUT--><input class="mas derecha required" id="nombre" maxlength="15" name="nombre" type="text"></div>
				<div class="errores pos" id="mensaje1">
					Dato Requerido</div>
				<div class="campos">
					<p class="izquierda  posicionarmovil">
						Apellido</p>
					<!-- INPUT--><input 314px="" class="mas derecha required" id="apellido" maxlength="15" name="apellido" type="text"></div>
				<div class="errores pos" id="mensaje2">
					Dato Requerido</div>
				<div class="campos">
					<p class="izquierda posicionarmovil">
						Télefono</p>
					<input class="mas derecha required" id="telefono" name="telefono" type="text"></div>
				<div class="errores pos" id="mensaje3">
					Dato Requerido</div>
				<div class="campos">
					<p class="izquierda posicionarmovil">
						Correo</p>
					<input class="mas derecha required" id="correo" maxlength="40" name="correo" type="email"></div>
				<div class="errores pos" id="mensaje4">
					Dato Requerido</div>
			</div>
			<div class="display divs situar">
				<div class="campos">
					<div>
						<p class="izquierda2 izq-m posicionar">
							Mensaje</p>
					</div>
					<textarea class="textarea left text_izq required" id="msj" name="msj"></textarea></div>
				<div class="error_msj" id="mensaje5">
					Mensaje Requerido</div>
			</div>
			<div class="display divs boton_enviar">
				<div class="erroress" id="mensaje6">
					<img alt="etelix" src="<?php echo Yii::app()->request->baseUrl; ?>/images/gif-load.gif" />Enviando mensaje
				</div>


				<button class="div_submit centrar" id="boton_enviar" type="button">Enviar &nbsp;&nbsp;<img src="<?php echo Yii::app()->request->baseUrl; ?>/images/white_sobre.png" style="width: 30px; height: 20px;"></button></div>
		</div> <!--  onclick="validar_form()"-->
		<div id="capa_float">
		</div>
	</form>
</div>
<div class="modal fade" id="ok">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button aria-hidden="true" class="close" data-dismiss="modal" type="button">×</button>
				<h4 class="modal-title">
					Contacto</h4>
			</div>
			<div class="modal-body">
				<div class="exitoso">
					<p>
						Mensaje Enviado</p>
				</div>
			</div>
			<div class="modal-footer">
				<a href="<?php echo Yii::app()->createUrl('/site/contact');?>"><button class="btn btn-default">Aceptar</button></a></div>
		</div>
		<!-- /.modal-content --></div>
	<!-- /.modal-dialog --></div>
<!-- /.modal -->
<div class="modal fade" id="error">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button aria-hidden="true" class="close" data-dismiss="modal" type="button">×</button>
				<h4 class="modal-title">
					Contacto</h4>
			</div>
			<div class="modal-body">
				<div class="no_exitoso">
					<p>
						Mensaje No Enviado</p>
				</div>
			</div>
			<div class="modal-footer">
				<a href="<?php echo Yii::app()->createUrl('/site/contact');?>"><button class="btn btn-default">Aceptar</button></a></div>
		</div>
		<!-- /.modal-content --></div>
	<!-- /.modal-dialog --></div>
<!-- /.modal --></div>
</div>