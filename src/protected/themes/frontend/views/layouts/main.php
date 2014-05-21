<!DOCTYPE html>
<html lang="<?php echo Yii::app()->language ?>">
    <head>
        <meta charset="utf-8">
        <title><?php echo CHtml::encode($this->pageTitle); ?></title>
        <meta name="description" content="<?php echo (P3Page::getActivePage()) ? P3Page::getActivePage()->description : '' ?>">
        <meta name="keywords" content="<?php echo (P3Page::getActivePage()) ? P3Page::getActivePage()->keywords : '' ?>">
        <meta name="author" content="">

        <script src="/../js/modernizr.custom.17475.js"></script>

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
            <header>
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
                    <!-- <a href='#'><img src='/../images/logo_linkedin.png' hspace='10'></a>
                    <a href='#'><img src='/../images/logo_twitter.png' vspace='2'></a> -->
                </div>
                <br>
                <?php $this->widget('p3widgets.components.P3WidgetContainer', array('id' => 'header')) ?>            
            </header>
            <!--Contenido-->
            <div>
                <?php echo $content; ?>

            <div class="row-fluid">
                <div class="">
                    <?php $this->widget('p3widgets.components.P3WidgetContainer', array('id' => 'footer')) ?>
                </div>
            </div> 
 

            
            <!--Contenido-->
            <!--<footer>
                <div class="container pie">
                    <div class="span4">
                            <strong>Cont&aacute;ctanos</strong>
                            <img src="/images/usa_flag.png"/>Somos un grupo de empresas especializadas en prestar a nuestros clientes soluciones integrales de Telecomunicaciones y Tecnología a nivel global, con ventas superiores a 20 millones de dólares al año.
                            <img src="/images/peru_flag.png"/>
                            <img src="/images/venezuela_fñag.png"/>
                            <p> Av. Francisco de Miranda, Torre Delta, piso 10,&nbsp;of. 10 A-B, Altamira, Caracas, Venezuela. Tel&eacute;fono: +58 (212) 740-1112 Fax: +58 (212) 740-1117&nbsp;</p>
                            <div>
                                <a class="fancybox" href="#">
                                    Escr&iacute;benos 
                                    <img alt="" src="/images/white_sobre.png"/>
                                </a>
                            </div>
                    </div>
                    <div class="span4">
                        <div class="row-fluid">
                            <ul>
                                <li><strong>Qui&eacute;nes Somos</strong></li>
                                <li>Nuestra Organizaci&oacute;n</li>
                                <li>Misi&oacute;n</li>
                                <li>Visi&oacute;n</li>
                                <li></li>
                                <li><strong>D&oacute;nde Estamos</strong></li>
                                <li>Mapa Interactivo</li>
                            </ul>
                            <ul>
                                <li><strong>Nuestros Servicios</strong></li>
                                <li>Servicios de Interconexi&oacute;n Internacional de Voz</li>
                                <li>SMS</li>
                                <li>Conectividad Internacional</li>
                                <li>Contact Center</li>
                                <li>Plataforma de Pagos</li>
                                <li>Puntos de Venta Integrales</li>
                                <li>Servicios de Hosting</li>
                                <li>Desarrollo de Software</li>
                                <li>Servicios Profesionales</li>
                            </ul>
                        </div>
                    </div>
                    <div class="span4">
                        <ul>
                            <li><strong>Clientes</strong></li>
                            <li>Nuestros Clientes</li>
                            <li><strong>Cont&aacute;ctanos</strong></li>
                            <li>E-mail</li>
                            <li>USA</li>
                            <li>Per&uacute;</li>
                            <li>Venezuela</li>
                        </ul>
                    </div>
                </div>
            </footer>--> 
            <!-- <div class="row">
                <div class="span3">
                    
                </div>
                <div class="span3">
                    <div class="row">
                        <div class="span1"></div>
                        <div class="span1"></div>
                    </div>
                </div>
                <div class="span3"></div>
            </div> -->
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
        


        <!-- EFECTO DE CAROUSEL SLIDER IMAGE DEL HOME -->
        <script type="text/javascript" src="/../js/jquery.ui.rcarousel.js"></script>
        <script type="text/javascript" src="/../js/jquerypp.custom.js"></script>
        <script type="text/javascript" src="/../js/jquery.elastislide.js"></script>


        <script type="text/javascript">
            
            $( '#carousel' ).elastislide( {
                minItems : 2
            } );
            
        </script>   
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
