

    <!--  <img alt="" src="<?php //echo Yii::app()->request->baseUrl; ?>/images/1-01.png">-->

    <link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/slider3/css/jquery.bxslider.css" type="text/css" />
    
    <link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/slider3/css/github.css" type="text/css" />

    <!--[if lt IE 9]>
    <script src="/js/html5shiv.js"></script>
    <![endif]-->

   <!-- <script src="/js/jquery.min.js"></script>-->
    
    
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/slider3/lib/jquery.bxslider.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/slider3/js/rainbow.min.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/slider3/js/scripts.js"></script>

<div class="slider1">
  <div class="slide"><img src="http://placehold.it/350x150&text=FooBar1"></div>
  <div class="slide"><img src="http://placehold.it/350x150&text=FooBar2"></div>
  <div class="slide"><img src="http://placehold.it/350x150&text=FooBar3"></div>
  <div class="slide"><img src="http://placehold.it/350x150&text=FooBar4"></div>
  <div class="slide"><img src="http://placehold.it/350x150&text=FooBar5"></div>
  <div class="slide"><img src="http://placehold.it/350x150&text=FooBar6"></div>
  <div class="slide"><img src="http://placehold.it/350x150&text=FooBar7"></div>
  <div class="slide"><img src="http://placehold.it/350x150&text=FooBar8"></div>
  <div class="slide"><img src="http://placehold.it/350x150&text=FooBar9"></div>
</div>                                
<script type="text/javascript">
$(document).ready(function(){
  $('.slider1').bxSlider({
    slideWidth: 200,
    minSlides: 1,
    maxSlides: 3,
    slideMargin: 10
  });
});
</script>