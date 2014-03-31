<?php
date_default_timezone_set('America/Caracas');
// config files
$dir = realpath(dirname(__FILE__).'/..').'/';
$main   = require($dir.'/web/app/config/main.php');
$local  = require($dir.'/web/app/config/main-local.php');
$env    = require($dir.'/web/app/config/env-'.$local['params']['env'].'.php');

// define YII_DEBUG in config files
if (defined('YII_DEBUG') && YII_DEBUG)
    error_reporting(E_ALL | E_STRICT);

// register composer autoloader
require_once(dirname(__FILE__).'/../web/vendor/autoload.php');

// load Yii
require_once(dirname(__FILE__).'/../web/vendor/yiisoft/yii/framework/yii.php');

// merge configurations
$config = CMap::mergeArray($main,$env,$local);

// start web application
Yii::createWebApplication($config)->run();

