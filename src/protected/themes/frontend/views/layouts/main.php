<!DOCTYPE html>
<html lang="<?php echo Yii::app()->language ?>">
    <head>
        <meta charset="utf-8">
        <title><?php echo CHtml::encode($this->pageTitle); ?></title>
        <meta name="description" content="<?php echo (P3Page::getActivePage()) ? P3Page::getActivePage()->description : '' ?>">
        <meta name="keywords" content="<?php echo (P3Page::getActivePage()) ? P3Page::getActivePage()->keywords : '' ?>">
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
                $this->widget('zii.widgets.CMenu', array(
                    'htmlOptions'=>array(
                        'class'=>'pull-left navlist',
                        ),
                    'items'=>Controller::getLanguageMenuItems()
                    )
                );
            ?>
            <div class="span2 offset9 inbox">
                <a href='#'><img src='/../images/logo_linkedin.png' hspace='10'></a>
                <a href='#'><img src='/../images/logo_twitter.png' vspace='2'></a>
            </div>
            <!--va para el widget-->
            <div class="row-fluid">
                <div class="span3">
                    <img alt="etelix" id="logo" src="/images/logo_etelix.png" />
                </div>
                <div class="span9">
                    <ul class="list_menu">
                        <li class="selectedMenuItem" id="ima_1">
                            <a class="fancybox" href="#">
                                <img class="img_menu" src="/images/icn_inicio_gris.png" />
                                <img class="img_menu oculta" src="/images/icn_inicio_orange.png" />
                                <p>Inicio</p>
                            </a>
                        </li>
                        <li id="ima_2">
                            <a class="fancybox" href="#">
                                <img class="img_menu" src="/images/icn_quienes_somos_gris.png" />
                                <img class="img_menu oculta" src="/images/icn_quienes_somos_orange.png" />
                                <p>&iquest;Qui&eacute;nes Somos?</p>
                            </a>
                        </li>
                        <li id="ima_3">
                            <a class="fancybox" href="#">
                                <img class="img_menu" src="/images/icn_nuestros_servicios_gris.png" />
                                <img class="img_menu oculta" src="/images/icn_nuestros_servicios_orange.png" />
                                <p>Nuestros Servicios</p>
                            </a>
                        </li>
                        <li id="ima_4">
                            <a class="fancybox" href="#">
                                <img class="img_menu" src="/images/icn_donde_estamos_gris.png" />
                                <img class="img_menu oculta" src="/images/icn_donde_estamos_orange.png" />
                                <p>D&oacute;nde Estamos?</p>
                            </a>
                        </li>
                        <li id="ima_5">
                            <a class="fancybox" href="#">
                                <img class="img_menu" src="/images/icn_clientes_gris.png" />
                                <img class="img_menu oculta" src="/images/icn_clientes_orange.png" />
                                <p>Clientes</p>
                            </a>
                        </li>
                        <li id="ima_6">
                            <a class="fancybox" href="#">
                                <img class="img_menu" src="/images/icn_contacto_gris.png" />
                                <img class="img_menu oculta" src="/images/icn_contacto_orange.png" />
                                <p>Contacto</p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <?php //$this->widget('p3widgets.components.P3WidgetContainer', array('id' => 'header')) ?>
            <!--va para el widget-->
            <!--Contenido-->
            <div>
                <?php echo $content; ?>
            </div>
            <!--Contenido-->
            <div class="row">
                <div class="span3">
                    
                </div>
                <div class="span3">
                    <div class="row">
                        <div class="span1"></div>
                        <div class="span1"></div>
                    </div>
                </div>
                <div class="span3"></div>
            </div>
        </div>
        <!-- /container -->
        <!-- <header>
                <div class="row">
                    <div class="span4">
                    
                </div>
                </div>
                
                <div id='inbox'>
                    <a href='#'><img src='/../images/logo_linkedin.png' hspace='10'></a>
                    <a href='#'><img src='/../images/logo_twitter.png' vspace='2'></a>
                </div>

                
            </header>
            <section>
            <!-- <div style="background-color:#fff6e7;" id=""> -->
            <!-- <div class="subwrapper">
                <?php //echo $content; ?>
            </div> -->
            <!-- </section>
            <footer>
            </footer>  -->
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