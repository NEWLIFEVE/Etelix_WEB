<nav id="menu" class="nav">                 
    <ul>
        <li class='menu1 active'>
            <a href="<?php echo Yii::app()->createUrl('/site/index');?>">
                
                <span>Inicio</span>
            </a>
        </li>
        <li class='menu2'>
            <a href="<?php echo Yii::app()->createUrl('/site/organitation');?>">
                
                <span>¿Quienes Somos?</span>
            </a>
        </li>
        <li class='menu3'>
            <a href="<?php echo Yii::app()->createUrl('/site/services');?>">
                
                <span>Nuestros Servicios</span>
            </a>
        </li>
        <li class='menu4'>
            <a href="<?php echo Yii::app()->createUrl('/site/map');?>">
                
                <span>Donde Estamos</span>
            </a>
        </li>
        <li class='menu5'>
            <a href="<?php echo Yii::app()->createUrl('/site/client');?>">
                
                <span>Clientes</span>
            </a>
        </li>
        <li class='menu6'>
            <a href="<?php echo Yii::app()->createUrl('/site/contact');?>">
                
                <span>Contacto</span>
            </a>
        </li>
    </ul>
</nav>