<?php
//Definimos nuestro servidor de produccion
define('SERVER_NAME_PROD', 'www.etelix.com');
//Obtenemos el nombre del servidor actual
$server = $_SERVER['SERVER_NAME'];
// config files
$dir = realpath(dirname(__FILE__).'/..').'/';
$main = require ('../protected/config/main.php');
$local = require ('../protected/config/main-local.php');
$env = require ('../protected/config/env-'.$local['params']['env'].'.php');
// define YII_DEBUG in config files
switch ($server) {
	case SERVER_NAME_PROD:
		defined('YII_DEBUG') or define('YII_DEBUG', false);
		defined('YII_TRACE_LEVEL') or define('YII_TRACE_LEVEL', 0);
		break;
	default:
		defined('YII_DEBUG') or define('YII_DEBUG', true);
		defined('YII_TRACE_LEVEL') or define('YII_TRACE_LEVEL', 3);
		break;
}
// register composer autoloader
require_once ('../vendor/autoload.php');
// load Yii
require_once ('../vendor/yiisoft/yii/framework/yii.php');
// merge configurations
$config = CMap::mergeArray($main, $env, $local);
// start web application
Yii::createWebApplication($config)->run();
