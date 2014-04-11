<!DOCTYPE html>
<html lang="<?php echo Yii::app()->language ?>">
<head>
    <meta charset="utf-8">
    <title><?php echo CHtml::encode($this->pageTitle); ?></title>
    <meta name="description"
          content="<?php echo (P3Page::getActivePage()) ? P3Page::getActivePage()->description : '' ?>">
    <meta name="keywords"
          content="<?php echo (P3Page::getActivePage()) ? P3Page::getActivePage()->keywords : '' ?>">
    <meta name="author" content="">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <?php
    $cs = Yii::app()->getClientScript();
    $cs->registerMetaTag('width=device-width, initial-scale=1.0', 'viewport');
    $cs->registerLinkTag('shortcut icon', NULL, '/favicon.ico', NULL, NULL);
    $cs->registerPackage('frontend');
    ?>
</head>

<body>
<div class="container">
    <div style="background-color:#fff6e7;" id="">
    <?php 
    echo '<br>';
    $this->widget('zii.widgets.CMenu', array(
            'htmlOptions'=>array(
                'class'=>'pull-left navlist',
                ),
        'items'=>Controller::getLanguageMenuItems()
    ));
    echo '
          <div id="inbox">';

    echo '</div><br><br>';
    /*echo '
          <div id="inbox">
          <a href="#"><img src="/../images/logo_linkedin.png" hspace="10"></a>
          <a href="#"><img src="/../images/logo_twitter.png" vspace="2"></a>';

    echo '</div><br><br>';*/


    //$this->renderFile(Yii::getPathOfAlias('application.themes.frontend.views.layouts') . DIRECTORY_SEPARATOR . '_menu.php') 

    ?>
    </div>
    <div class="subwrapper">
        <?php echo $content; ?>
    </div>
    <hr>
    <footer>
    </footer>
</div>
<!-- /container -->


<div id="backend">
<?php

if (Yii::app()->user->checkAccess('Editor')) {
    // CSS files
    $css = Yii::app()->assetManager->publish(
        Yii::app()->theme->basePath . '/assets',
        false,   // hash by name
        -1,     // level
        false); // forceCopy
    $cs->registerCssFile($css . '/p3.css');
    $cs->registerCssFile($css . '/backend.css');
    $this->renderFile(
        Yii::getPathOfAlias('application.themes.backend2.views.layouts') . DIRECTORY_SEPARATOR . '_navbar.php'
    );
}

?>
</div>


        <script src="/../js/jquery.menuSlider.min.js"></script>
        <script src="/../js/web.js"></script>
        <script type="text/javascript" src="/../js/jquery.ui.core.js"></script>
        <script type="text/javascript" src="/../js/jquery.ui.widget.js"></script>
        <script type="text/javascript" src="/../js/jquery.ui.rcarousel.js"></script>
        <script>

            $("#slideContainer2").menuSlider({thickness:"2px", speed:0.5, tStyle:"ease-out"});

        </script>
        <script>
            var _gaq=[['_setAccount','UA-42261367-1'],['_trackPageview']];
            (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
            g.src='//www.google-analytics.com/ga.js';
            s.parentNode.insertBefore(g,s)}(document,'script'));
        </script>


</body>
</html>