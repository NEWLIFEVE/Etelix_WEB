        <!-- Example assets -->
        <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/jcarousel.responsive.css">

        <!--<script type="text/javascript" src="<?php //echo Yii::app()->request->baseUrl; ?>/js/jquery.js"></script>-->
        <script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery.jcarousel.js"></script>

        <script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jcarousel.responsive.js"></script>
		
            <div class="col-md-3">
                <div class="principales_clientes" >

                   <h4 style="text-align: left;font-size: 1.6em;">Our Principal Customers</h4>    
                </div>
            </div>
            <div class="jcarousel-wrapper">
                <div class="jcarousel">
                    <ul>
                        <?php
                        for ($i=1;$i<=14;$i++){
                            echo "<li><img alt='Image ".$i."' src='".Yii::app()->request->baseUrl."/images/".$i."-01.png'></li>";
                        }
                        ?>
                    </ul>
                </div>

                <a href="#" class="jcarousel-control-prev">&lsaquo;</a>
                <a href="#" class="jcarousel-control-next">&rsaquo;</a>

               <!-- <p class="jcarousel-pagination"></p>-->
            </div>
        </div>
