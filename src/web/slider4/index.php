<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Shared assets -->
        

        <!-- Example assets -->
        <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl;?>/slider4/jcarousel.responsive.css">

        <!--<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl;?>/slider4/jquery.js"></script>-->
        <script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl;?>/slider4/jquery.jcarousel.min.js"></script>

        <script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl;?>/slider4/jcarousel.responsive.js"></script>

    </head>
    <body>

        
            <div class="col-md-3">
                <div class="principales_clientes">
                   <h4>Principales Clientes</h4>    
                </div>
            </div>
            <div class="jcarousel-wrapper">
                <div class="jcarousel">
                    <ul>
                        <?php
                        for ($i=1;$i<=25;$i++){
                            echo "<li><img alt='Image ".$i."' src='".Yii::app()->request->baseUrl."/images/clientes/".$i."-01.png'></li>";
                        }
                        ?>
                    </ul>
                </div>

                <a href="#" class="jcarousel-control-prev">&lsaquo;</a>
                <a href="#" class="jcarousel-control-next">&rsaquo;</a>

             <!--   <p class="jcarousel-pagination"></p>-->
            </div>

    </body>
</html>
