<?php

class SiteController extends Controller
{
	/**
	 * Declares class-based actions.
	 */
	public function actions()
	{
		return array(
			// captcha action renders the CAPTCHA image displayed on the contact page
			'captcha'=>array(
				'class'=>'CCaptchaAction',
				'backColor'=>0xFFFFFF,
			),
			// page action renders "static" pages stored under 'protected/views/site/pages'
			// They can be accessed via: index.php?r=site/page&view=FileName
			'page'=>array(
				'class'=>'CViewAction',
			),
		);
	}

	/**
	 * This is the default 'index' action that is invoked
	 * when an action is not explicitly requested by users.
	 */
	public function actionIndex()
	{
		// renders the view file 'protected/views/site/index.php'
		// using the default layout 'protected/views/layouts/main.php'
		$this->render('index');
	}

	public function actionServices()
	{
		// renders the view file 'protected/views/site/index.php'
		// using the default layout 'protected/views/layouts/main.php'
		$this->render('services');
	}
   
    public function actionClient()
	{
		// renders the view file 'protected/views/site/index.php'
		// using the default layout 'protected/views/layouts/main.php'
		$this->render('client');
	}

	public function actionMap()
	{
		// renders the view file 'protected/views/site/index.php'
		// using the default layout 'protected/views/layouts/main.php'
		$this->render('map');
	}

	public function actionCountry()
	{
		// renders the view file 'protected/views/site/index.php'
		// using the default layout 'protected/views/layouts/main.php'
		$this->render('country');
	}

	public function actionOrganization()
	{
		// renders the view file 'protected/views/site/index.php'
		// using the default layout 'protected/views/layouts/main.php'
		$this->render('organization');
	}

	public function actionContact()
	{
		// renders the view file 'protected/views/site/index.php'
		// using the default layout 'protected/views/layouts/main.php'
		$this->render('organization');

		//var_dump($_POST);
	    // $html = "This is my Plain Text Content for those with cheap emailclients ;-)\nThis is my second row of text";

	    // if(Yii::app()->mail->enviar($html, 'edwing@sacet.biz', 'Prueba',null))
	    // {
	    // 	echo "exito";
	    // }else
	    // {
	    // 	echo "fallo";
	    // }
	}



	public function actionEmail()
	{
		//echo $_POST['correo'];
		$nombre=$_POST['nombre'];
		$apellido=$_POST['apellido'];
		$telefono=$_POST['telefono'];
		$correo=$_POST['correo'];
		$msj=$_POST['msj'];
		$texto=$msj.".<br><br>Datos Personales:<br> Nombre y Apellido: ".$nombre." ".$apellido."<br> Télefono: ".$telefono."<br> Correo: ".$correo;

		/*Parametros
		$texto=Texto a enviar;
		$destinatario=$correo;
		Asunto="Titulo del Correo";	
		Null
		*/
		/*  PONER EN CORREO EL CORREO DESTINATARIO DE LA EMPRESA */			
	     if(Yii::app()->mail->enviar($texto, $correo, "Contact from Etelix WEB"))
	     {
	     	echo "1";
	     	
	     }else
	     {
	     	echo "0";
	     }



	}

	/**
	 * This is the action to handle external exceptions.
	 */
	public function actionError()
	{
		if($error=Yii::app()->errorHandler->error)
		{
			if(Yii::app()->request->isAjaxRequest)
				echo $error['message'];
			else
				$this->render('error', $error);
		} else {
            $error['message'] = "Precondition Failed";
            $error['code'] = 412;
            $this->render('error', $error);
        }
	}

	/**
	 * Displays the contact page
	 */
	// public function actionContact()
	// {
	// 	$model=new ContactForm;
	// 	if(isset($_POST['ContactForm']))
	// 	{
	// 		$model->attributes=$_POST['ContactForm'];
	// 		if($model->validate())
	// 		{
	// 			$name='=?UTF-8?B?'.base64_encode($model->name).'?=';
	// 			$subject='=?UTF-8?B?'.base64_encode($model->subject).'?=';
	// 			$headers="From: $name <{$model->email}>\r\n".
	// 				"Reply-To: {$model->email}\r\n".
	// 				"MIME-Version: 1.0\r\n".
	// 				"Content-type: text/plain; charset=UTF-8";

	// 			mail(Yii::app()->params['adminEmail'],$subject,$model->body,$headers);
	// 			Yii::app()->user->setFlash('contact',Yii::t('app', 'Thank you for contacting us. We will respond to you as soon as possible.'));
	// 			$this->refresh();
	// 		}
	// 	}
	// 	$this->render('contact',array('model'=>$model));
	// }

	/**
	 * Login page handled via vendor module mishamx.yii-user
	 */

	/**
	 * Logs out the current user and redirect to homepage.
	 */
	public function actionLogout()
	{
		Yii::app()->user->logout();
		$this->redirect(Yii::app()->homeUrl);
	}
}
