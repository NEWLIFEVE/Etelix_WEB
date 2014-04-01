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

    <?php 
    echo '<div id="slideContainer">';
    $this->widget('zii.widgets.CMenu', array(
            'htmlOptions'=>array(
                'class'=>'pull-left navlist',
                ),
        'items'=>Controller::getLanguageMenuItems()
    ));
    echo '</div>
          <div><img src="/es/img/icon-32/logo_twitter.png_41.png">
          <img src="/es/img/icon-32/logo_linkedin.png_39.png">';

    /*$this->widget('zii.widgets.CMenu',array(
     'htmlOptions'=>array('class' => 'span5 offset5 navlist'),   
     'items'=>array(
            array('label'=>'¿Quienes Somos?', 'url'=>array('/site/index'),),
            array('label'=>'Nuestros Servicios', 'url'=>array('/site/services'),),
            array('label'=>'Donde Estamos', 'url'=>array('/site/favoritos')),
            array('label'=>'Clientes', 'url'=>array('/site/perfil-datospersonales')),
            array('label'=>'Contactos', 'url'=>array('/site/perfil-datospersonales')),
            ),
    ));*/
    echo '</div><br><br><br><br>';

    $this->renderFile(Yii::getPathOfAlias('application.themes.frontend.views.layouts') . DIRECTORY_SEPARATOR . '_menu.php') 

    ?>
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

</body>
</html>