
<div class="row-fluid">
	<div class="">
		
		<?php 
		$country = $_GET['country'];
		$direccion = '';

		


		//$this->widget('p3widgets.components.P3WidgetContainer', array('id' => 'main')); 

		switch ($country) {
			case 'inglaterra_map':
					$direccion = '<div class="address map_1">
									<p>Augusto Cárdenas</p>
									<p>Sales Director London</p>
									<p>+51 (94)510-75.65</p>
									<p>augustoc@etelix.com</p>
								  </div>';
			break;
			case 'eeuu_map':
					$direccion = '<div class="address map_2">
									<p>444 Brickell Ave. Suite 51-845, Miami FL 33131, USA</p>
									<p>Teléfono: +1 (305)722.1112</p>
									<p>+51 (94)510-75.65</p>
									<p>Fax: +1 (305)722.1117</p>
								  </div>';
			break;
			case 'venezuela_map':
					$direccion = '<div class="address map_3">
									<p>Av. Francisco de Miranda, Torre Delta, piso 10,</p>
									<p>of. 10 A-B. Altamira, Caracas, Venezuela</p>
									<p>Teléfono: +58 (212)740.1112</p>
									<p>Fax: +58 (212)742.1117</p>
								  </div>';
			break;
			case 'panama_map':
					$direccion = '<div class="address map_4">
									<p>Carlos Piñango</p>
									<p>Business Development Director</p>
									<p>carlosp@etelix.com</p>
									<p>+507 (6) 219-69.17</p>
								  </div>';
			break;
			case 'colombia_map':
					$direccion = '<div class="address map_5">
									<p>Juan Carlos López Silva</p>
									<p>Sales Vice President/CCO</p>
									<p>jclopezsilva@etelix.com</p>
									<p>+57 (313)777-73.68</p>
								  </div>';
			break;
			/*case 'argentina_map':
					$direccion = '<div class="address map_6">
									<p>Diana Mirakyan</p>
									<p>Business Manager Asia</p>
									<p>dianam@etelix.com</p>
									<p>+54 (911)4673-44.04</p>
								  </div>';
			break;*/
			case 'chile_map':
					$direccion = '<div class="address map_6">
									<p>Raúl Monsalve</p>
									<p>Sales Director Chile</p>
									<p>RaulMonsalve@etelix.com</p>
									<p>+56 (9)9743-0523</p>
								  </div>';
			break;
			case 'peru_map':
					$direccion = '<div class="address map_7">
									<p>Jr. Dante 966 Surquillo, Lima, Perú</p>
									<p>Teléfono: +51 (1)641.9550</p>
									<p>Fax: +51 (1)641.9549</p>
								  </div>';
			break;
			  	
			default:
			  		
			break;
		}	


		echo "<div align='left' class='all_country'>
				<img src='/images/$country.png'>
				$direccion
			  </div>";
		?>
	</div>
</div>



