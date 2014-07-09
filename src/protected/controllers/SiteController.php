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
		}
	}

	/**
	 * Displays the contact page
	 */
	public function actionContact()
	{
		$model=new ContactForm;
		if(isset($_POST['ContactForm']))
		{
			$model->attributes=$_POST['ContactForm'];
			if($model->validate())
			{
				$name='=?UTF-8?B?'.base64_encode($model->name).'?=';
				$subject='=?UTF-8?B?'.base64_encode($model->subject).'?=';
				$headers="From: $name <{$model->email}>\r\n".
					"Reply-To: {$model->email}\r\n".
					"MIME-Version: 1.0\r\n".
					"Content-Type: text/plain; charset=UTF-8";

				mail(Yii::app()->params['adminEmail'],$subject,$model->body,$headers);
				Yii::app()->user->setFlash('contact','Thank you for contacting us. We will respond to you as soon as possible.');
				$this->refresh();
			}
		}
		$this->render('contact',array('model'=>$model));
	}

	/**
	 * Displays the login page
	 */
	public function actionLogin()
	{
		$model=new LoginForm;

		// if it is ajax validation request
		if(isset($_POST['ajax']) && $_POST['ajax']==='login-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}

		// collect user input data
		if(isset($_POST['LoginForm']))
		{
			$model->attributes=$_POST['LoginForm'];
			// validate user input and redirect to the previous page if valid
			if($model->validate() && $model->login())
				$this->redirect(Yii::app()->user->returnUrl);
		}
		// display the login form
		$this->render('login',array('model'=>$model));
	}

	/**
	 * Logs out the current user and redirect to homepage.
	 */
	public function actionLogout()
	{
		Yii::app()->user->logout();
		$this->redirect(Yii::app()->homeUrl);
	}

	public function actionOrganitation()
	{
		$this->render('organitation');
	}

	public function actionServices()
	{
		if(isset($_POST['var'])){
			if($_POST['var']=='services'){
        		$this->render('services',array('model'=>$model));
			}
		}
		$this->render('services');
	}

	public function actionMap()
	{
		$this->render('map');
	}

	public function actionClient()
	{
		$this->render('client');
	}

	public function actionMensaje() 
	{
		
	
		$apellido=mb_strtoupper($_POST['apellido'], 'UTF-8');
		$nombre=mb_strtoupper($_POST['nombre'], 'UTF-8');
		$telefono=mb_strtoupper($_POST['telefono'], 'UTF-8');
		$msj=mb_strtoupper($_POST['msj'], 'UTF-8');
		$correo=$_POST['correo'];
		$mensaje='<table border="0">
				  
				  <tr>
					<td><p>
					
					  <h4>El Sr(a) '.$nombre.' '.$apellido.', ha enviado un mensaje desde el sitio web Etelix.com.</h4>
					  <br />
					    <b>Telefono de contacto</b>: '.$telefono.'<br />
					    <b>Mensaje</b>: '.$msj.'<br />
					    <br />
					      2014 Etelix Group - Todos los derechos reservados<br />
					   
				    </td>
				  </tr>
				</table>';
		$nombres=$nombre." ".$apellido;
		//print_r("<br>".$mensaje ." correo: ".$correo);
		

		if(Yii::app()->mail->enviar($mensaje, $correo, 'Mensaje de contacto de la pag')){
			echo "ensaje enviado";
		}
		else{
			echo "error";
		}
		//$this->render('contact');

		//Yii::app()->user->setFlash('contact', 'Thank you for contacting us. We will respond to you as soon as possible.');
        


		


			
				
		
	
	}
	
	/*public function correo($aquien,$aquiennombre,$mensaje,$tlf)
	{
		Yii::import('application.extensions.phpmailer.JPhpMailer');
		$mail = new JPhpMailer;
		$mail->IsSMTP();
		$mail->Host = Yii::app()->params['mailHost'];/*'172.16.0.20';*
		$mail->Port = Yii::app()->params['mailPortSsl'];
		$mail->SMTPAuth = true;
		$mail->SMTPSecure = 'ssl';
		$mail->Username = Yii::app()->params['mailUsername'];/*'xmolina';*
		$mail->Password = Yii::app()->params['mailUserPassw'];
		$mail->SetFrom(Yii::app()->params['mailRemitente'], Yii::app()->params['nombreRemitente']);
		
		$mail->Subject = Yii::app()->params['mailAsunto'];
		//$mail->AltBody = 'To view the message, please use an HTML compatible email viewer!';
		$mail->MsgHTML($mensaje);
		$mail->AddAddress($aquien, $aquiennombre);
		
		if(!$mail->Send()) {
		   throw new CHttpException(500,'EL servidor de correo esta inhabilitado temporalmente intentelo mas tarde.',500);
		}
		else {
		   //echo 'Mail enviado!';
		}
		

	}*/


}