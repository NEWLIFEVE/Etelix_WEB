<?php

// Use this file as main-local.php to override settings only on your local machine

return array(
    'params' => array(
        'env' => 'development'
    ),
    'components' => array(
        // MySQL
        'db'            => array(
            'tablePrefix'      => '',
            'connectionString' => 'mysql:host=localhost;dbname=etel7527_web_phundament',
            'emulatePrepare' => true,
            'username' => 'root',
            'password' => '1234',
            'charset' => 'utf8',
        ),
    )
);