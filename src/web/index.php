<?php
date_default_timezone_set('America/Caracas');
// config files
$dir = realpath(dirname(__FILE__).'/..').'/';
$main   = require('../protected/config/main.php');
$local  = require('../protected/config/main-local.php');
$env    = require('../protected/config/env-'.$local['params']['env'].'.php');

// define YII_DEBUG in config files
if (defined('YII_DEBUG') && YII_DEBUG)
    error_reporting(E_ALL | E_STRICT);

// register composer autoloader
require_once('../vendor/autoload.php');

// load Yii
require_once('../../../yii/framework/yii.php');

// merge configurations
$config = CMap::mergeArray($main,$env,$local);

// start web application
Yii::createWebApplication($config)->run();

