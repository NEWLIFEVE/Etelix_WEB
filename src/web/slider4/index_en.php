<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl;?>/slider4/jcarousel.responsive.css">
<!--<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl;?>/slider4/jquery.js"></script>-->
<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl;?>/slider4/jquery.jcarousel.js"></script>
<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl;?>/slider4/jcarousel.responsive.js"></script>
            <div class="col-md-3">
                <div class="principales_clientes" >
                   <h4 style="text-align: left;font-size: 1.6em;">Our Principal Customers</h4>    
                </div>
            </div>
            <div class="jcarousel-wrapper">
                <div class="jcarousel">
                      <ul id="ul_clientes">
                        <?php
                        for ($i=1;$i<=6;$i++){
                            echo "<li  class='li_clientes' title='".$i."'><img alt='Image ".$i."' src='".Yii::app()->request->baseUrl."/images/clientes/".$i."-01.png'></li>";
                        }
                        ?>
                    </ul>
                </div>
 <a href="#" id="prev" class="jcarousel-control-prev">&lsaquo;</a>
    <a href="#" id="next" class="jcarousel-control-next">&rsaquo;</a>

               <!-- <p class="jcarousel-pagination"></p>-->
            </div>
        </div>
<script type="text/javascript">
   //para el responsive calculo cuantas imagenes cargaré dependiendo del ancho de la ventana del navegador
    var valor;
    var width;
    var jcarousel = $('.jcarousel');
    jcarousel.on('jcarousel:reload jcarousel:create', function () {
        var width = jcarousel.innerWidth();
        if (width >= 600) {
            width = 136;
            width2 = 134;
            valor=6;
        }else if ((width > 350)&&(width < 600) ) {
            width = 141;
            width2 = 139;
             valor=4;
        }else if (width <= 349) {
          width = 164;
            width2 = 162;
            valor=2;
        }
    });
    /*
        elimina las img cargadas y las sustituye por las siguientes para que el carousel funcione
    */
    $('#next').on('click', function(){
        var ultimo = $('ul#ul_clientes li:last').attr("title");
        ultimo = parseInt(ultimo);
         $('#ul_clientes > li:nth-child(n)').fadeOut();
        $('#ul_clientes > li:nth-child(n)').remove();
        var primero=ultimo+1;
        var ultimo=primero+valor;
        if(ultimo>=25){
            ultimo=25;
            primero=19;
        }
        var text_html;
        console.log("primero: "+primero+" ultimo: "+ultimo);
        for (var i=primero;i<=ultimo;i++){
            text_html+="<li class='li_clientes' style='width: "+width+"px;' title='"+i+"'><img style='width: "+width2+"px;' alt='Image "+i+"' src='<?php echo Yii::app()->request->baseUrl; ?>/images/clientes/"+i+"-01.png'></li>";        
        }
        $( "#ul_clientes" ).html(text_html).fadeIn();  
    });
     /*
        elimina las img cargadas y las sustituye por las anteriores para que el carousel funcione
    */
    $('#prev').on('click', function(){
        var primero = $('ul#ul_clientes li:first').attr("title");
        primero = parseInt(primero);
        $('#ul_clientes > li:nth-child(n)').fadeOut();
        $('#ul_clientes > li:nth-child(n)').remove();
        var ultimo=primero-1;
        var primero=ultimo-valor;
        if(primero<=0){
            ultimo=6;
            primero=1;
        }
        var text_html;
        console.log("primero: "+primero+" ultimo: "+ultimo);
        for (var i=primero;i<=ultimo;i++){
            text_html+="<li class='li_clientes' style='width: "+width+"px;'  title='"+i+"'><img style='width: "+width2+"px;' alt='Image "+i+"' src='<?php echo Yii::app()->request->baseUrl; ?>/images/clientes/"+i+"-01.png'></li>";        
        }
        $( "#ul_clientes" ).html(text_html).fadeIn();  
    });
</script>