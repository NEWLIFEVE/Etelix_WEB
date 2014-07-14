
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/jquery-ui.css">
	<script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
	<script>
	$(function() {
		$( "#accordion" ).accordion({
			collapsible: true
		});
	});
	</script>
<div class="widget display" id="widget-26">
    <div align="center" class="map">
	    <div id="all_country_div">
			<div class="pais_1">
				<p class="pais_titulo">
					<a href="#" id="inglaterra" title="Ver Dirección en Inglaterra">Inglaterra</a>
					<!--<a href="/es/site/country?country=inglaterra_map" title="Ver Dirección en Inglaterra">Inglaterra</a>-->
				</p>
				<p class="pais_capital">
					<a href="#" id="inglaterra" title="Ver Dirección en Inglaterra">Londres</a>
				</p>
			</div>
			<div class="pais_2">
				<p class="pais_titulo">
					<a href="#" id="usa" title="Ver Dirección en Estado Unidos">Estados Unidos</a>
				</p>
				<p class="pais_capital">
					<a href="#" id="usa" title="Ver Dirección en Estado Unidos">Miami/New York</a>
				</p>
			</div>
			<div class="pais_3">
				<p class="pais_titulo">
					<a href="#" id="vzla" title="Ver Dirección en Venezuela">Venezuela</a>
				</p>
				<p class="pais_capital">
					<a href="#" id="vzla" title="Ver Dirección en Venezuela">Caracas</a>
				</p>
			</div>
			<div class="pais_4">
				<p class="pais_titulo">
					<a href="#" id="panama" title="Ver Dirección en Panamá">Panamá</a>
				</p>
				<p class="pais_capital">
					<a href="#" id="panama" title="Ver Dirección en Panamá">Panamá</a>
				</p>
			</div>
			<div class="pais_5">
				<p class="pais_titulo">
					<a href="#" id="colombia" title="Ver Dirección en Colombia">Colombia</a>
				</p>
				<p class="pais_capital">
					<a href="#" id="colombia" title="Ver Dirección en Colombia">Bogotá/Barranquilla</a>
				</p>
			</div>
			<div class="pais_6">
				<p class="pais_titulo">
					<a href="#" id="chile" title="Ver Dirección en Chile">Chile</a>
				</p>
				<p class="pais_capital">
					<a href="#" id="chile" title="Ver Dirección en Chile">Santiago de Chile</a>
				</p>
			</div>
			<div class="pais_7">
				<p class="pais_titulo">
					<a href="#" id="peru" title="Ver Dirección en Perú">Perú</a>
				</p>
				<p class="pais_capital">
					<a href="#" id="peru" itle="Ver Dirección en Perú">Lima</a>
				</p>
			</div>
			<img src="<?php echo Yii::app()->request->baseUrl; ?>/images/mapa_completo.png" usemap="#map">
		</div>
</div>

<div id="accordion">
	<h3>Inglaterra <!--<span class="flag_country flag_ingla">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>--></h3>
	<div>
		<p>Augusto Cárdenas</p>
		<p>Sales Director London</p>
		<p>+51 (94)510-75.65</p>
		<p>augustoc@etelix.com</p>
	</div>
	
	<h3>Estados Unidos</h3>
	<div>
		<p>444 Brickell Ave. Suite 51-845</p>
		<p>Miami FL 33131, USA</p>
		<p>Teléfono: +1 (305)722.1112</p>
		<p>Fax: +1 (305)722.1117</p>
	</div>
	<h3>Venezuela</h3>
	<div>
		<p>Av. Francisco de Miranda,</p>
		<p>Torre Delta, piso 10,</p>
		<p>of. 10 A-B. Altamira,</p>
		<p>Caracas, Venezuela</p>
		<p>Teléfono: +58 (212)740.1112</p>
		<p>Fax: +58 (212)742.1117</p>
	</div>
	<h3>Panamá</h3>
	<div>
		<p>Diana Mirakyan</p>
		<p>Business Manager, Asia &amp; CIS</p>
		<p>dianam@etelix.com</p>
		<p>+507 (6) 683-7924</p>
		<p></p>
		<p>Carlos Piñango</p>
		<p>Business Development Director</p>
		<p>carlosp@etelix.com</p>
		<p>+507 (6) 219-69.17</p>
	</div>
	<h3>Colombia</h3>
	<div>
		<p>Juan Carlos López Silva</p>
		<p>Sales Vice President/CCO</p>
		<p>jclopezsilva@etelix.com</p>
		<p>+57 (313)777-73.68</p>
	</div>
	<h3>Chile</h3>
	<div>
		<p>Raúl Monsalve</p>
		<p>Sales Director Chile</p>
		<p>RaulMonsalve@etelix.com</p>
		<p>+56 (9)9743-0523</p>
	</div>
	<h3>Perú</h3>
	<div>
		<p>Jr. Dante 966 Surquillo,</p>
		<p>Lima, Perú</p>
		<p>Teléfono: +51 (1)641.9550</p>
		<p>Fax: +51 (1)641.9549</p>
	</div>
</div>

<div id="inglaterra_view" class="inglaterra_view">
		<div class="">
		
		<div align="left" class="all_country">
			<div class="world" style="float:right;">
                <a href="#" id="link_all_country" title="Ver todos los paises" style="color:#FFFFFF;"><img alt="" src="<?php echo Yii::app()->request->baseUrl; ?>/images/icn_donde_estamos_orange.png" style="width: 30px; height: 20px;" /></a>
            </div>
				<img src="<?php echo Yii::app()->request->baseUrl; ?>/images/inglaterra_map.png">
				<div class="address map_1">
									<p>Augusto Cárdenas</p>
									<p>Sales Director London</p>
									<p>+51 (94)510-75.65</p>
									<p>augustoc@etelix.com</p>
								  </div>
			  </div>	</div>

</div>

<div id="usa_view" class="usa_view">
<div class="">
		
		<div align="left" class="all_country">
			
			<div class="world" style="float:right;">
                <a href="#" id="link_all_country" title="Ver todos los paises" style="color:#FFFFFF;"><img alt="" src="<?php echo Yii::app()->request->baseUrl; ?>/images/icn_donde_estamos_orange.png" style="width: 30px; height: 20px;" /></a>
            </div>
				<img src="<?php echo Yii::app()->request->baseUrl; ?>/images/eeuu_map.png">
				<div class="address map_2">
									<p>444 Brickell Ave. Suite 51-845, Miami FL 33131, USA</p>
									<p>Teléfono: +1 (305)722.1112</p>
									<p>+51 (94)510-75.65</p>
									<p>Fax: +1 (305)722.1117</p>
								  </div>
			  </div>	</div>
</div>




<div id="vzla_view" class="vzla_view">
		<div class="">
		
		<div align="left" class="all_country">
			<div class="world" style="float:right;">
                <a href="#" id="link_all_country" title="Ver todos los paises" style="color:#FFFFFF;"><img alt="" src="<?php echo Yii::app()->request->baseUrl; ?>/images/icn_donde_estamos_orange.png" style="width: 30px; height: 20px;" /></a>
            </div>
				<img src="<?php echo Yii::app()->request->baseUrl; ?>/images/venezuela_map.png">
				<div class="address map_3">
									<p>Av. Francisco de Miranda, Torre Delta, piso 10,</p>
									<p>of. 10 A-B. Altamira, Caracas, Venezuela</p>
									<p>Teléfono: +58 (212)740.1112</p>
									<p>Fax: +58 (212)742.1117</p>
								  </div>
			  </div>	</div>
</div>

<div id="panama_view" class="panama_view">
		<div class="">
		
		<div align="left" class="all_country">
			<div class="world" style="float:right;">
                <a href="#" id="link_all_country" title="Ver todos los paises" style="color:#FFFFFF;"><img alt="" src="<?php echo Yii::app()->request->baseUrl; ?>/images/icn_donde_estamos_orange.png" style="width: 30px; height: 20px;" /></a>
            </div>
				<img src="<?php echo Yii::app()->request->baseUrl; ?>/images/panama_map.png">
				<div class="address map_4">
									<p>Carlos Piñango</p>
									<p>Business Development Director</p>
									<p>carlosp@etelix.com</p>
									<p>+507 (6) 219-69.17</p>
								  </div>
			  </div>	</div>
</div>

<div id="colombia_view" class="colombia_view">
		<div class="">
		
		<div align="left" class="all_country">
			<div class="world" style="float:right;">
                <a href="#" id="link_all_country" title="Ver todos los paises" style="color:#FFFFFF;"><img alt="" src="<?php echo Yii::app()->request->baseUrl; ?>/images/icn_donde_estamos_orange.png" style="width: 30px; height: 20px;" /></a>
            </div>
				<img src="<?php echo Yii::app()->request->baseUrl; ?>/images/colombia_map.png">
				<div class="address map_5">
									<p>Juan Carlos López Silva</p>
									<p>Sales Vice President/CCO</p>
									<p>jclopezsilva@etelix.com</p>
									<p>+57 (313)777-73.68</p>
								  </div>
			  </div>	</div>
</div>

<div id="chile_view" class="chile_view">
		<div class="">
		
		<div align="left" class="all_country">
			<div class="world" style="float:right;">
                <a href="#" id="link_all_country" title="Ver todos los paises" style="color:#FFFFFF;"><img alt="" src="<?php echo Yii::app()->request->baseUrl; ?>/images/icn_donde_estamos_orange.png" style="width: 30px; height: 20px;" /></a>
            </div>
				<img src="<?php echo Yii::app()->request->baseUrl; ?>/images/chile_map.png">
				<div class="address map_6">
									<p>Raúl Monsalve</p>
									<p>Sales Director Chile</p>
									<p>RaulMonsalve@etelix.com</p>
									<p>+56 (9)9743-0523</p>
								  </div>
			  </div>	</div>
</div>

<div id="peru_view" class="peru_view">
		<div class="">
		
		<div align="left" class="all_country">
			<div class="world" style="float:right;">
                <a href="#" id="link_all_country" title="Ver todos los paises" style="color:#FFFFFF;"><img alt="" src="<?php echo Yii::app()->request->baseUrl; ?>/images/icn_donde_estamos_orange.png" style="width: 30px; height: 20px;" /></a>
            </div>
				<img src="<?php echo Yii::app()->request->baseUrl; ?>/images/peru_map.png">
				<div class="address map_7">
									<p>Jr. Dante 966 Surquillo, Lima, Perú</p>
									<p>Teléfono: +51 (1)641.9550</p>
									<p>Fax: +51 (1)641.9549</p>
								  </div>
			  </div>	</div>
</div>

<script type="text/javascript">
		
		$(document).ready(function(){
			$("#accordian h3").click(function(){
				//slide up all the link lists
				$("#accordian ul ul").slideUp();
				//slide down the link list below the h3 clicked - only if its closed
				if(!$(this).next().is(":visible"))
				{
					
				}
			});
		});



		$( "a#link_all_country" ).click(function() {

			$("#peru_view").fadeOut();
			$("#inglaterra_view").fadeOut();
			$("#usa_view").fadeOut();
			$("#panama_view").fadeOut();
			$("#vzla_view").fadeOut();
			$("#colombia_view").fadeOut();
			$("#chile_view").fadeOut();
			$(".map").css("display","block");
			$("#all_country_div").fadeIn();

		});
 		 

		$( "#inglaterra" ).click(function() {
			$(".map").css("display","none");
			$("#all_country_div").fadeOut();
			$("#inglaterra_view").fadeIn();
		});

		$( "#usa" ).click(function() {
			$(".map").css("display","none");
			$("#all_country_div").fadeOut();
			$("#usa_view").fadeIn();
		});

		$( "#panama" ).click(function() {
			$(".map").css("display","none");
			$("#all_country_div").fadeOut();
			$("#panama_view").fadeIn();
		});

		$( "#vzla" ).click(function() {
			$(".map").css("display","none");
			$("#all_country_div").fadeOut();
			$("#vzla_view").fadeIn();
		});

		$( "#chile" ).click(function() {
			$(".map").css("display","none");
			$("#all_country_div").fadeOut();
			$("#chile_view").fadeIn();
		});

		$( "#colombia" ).click(function() {
			$(".map").css("display","none");
			$("#all_country_div").fadeOut();
			$("#colombia_view").fadeIn();
		});

		$( "#peru" ).click(function() {
			$(".map").css("display","none");
			$("#all_country_div").fadeOut();
			$("#peru_view").fadeIn();
		});

</script>
