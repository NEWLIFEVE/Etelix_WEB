<div class="widget display" id="widget-38">
    <div class="fondo">
	<div class="titulo">
		Contáctanos</div>
	<form action="/Site/Email" id="formulario" method="POST">
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
				<button class="div_submit centrar" id="boton_enviar" onclick="validar_form()" type="button">Enviar &nbsp;&nbsp;<img src="../web/images/white_sobre.png" style="width: 30px; height: 20px;"></button></div>
		</div>
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
				<a href="/Site/Index"><button class="btn btn-default">Aceptar</button></a></div>
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
				<a href="/Site/Index"><button class="btn btn-default">Aceptar</button></a></div>
		</div>
		<!-- /.modal-content --></div>
	<!-- /.modal-dialog --></div>
<!-- /.modal --></div>