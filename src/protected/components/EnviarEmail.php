<?php
/**
 * @package components
 */
class EnviarEmail extends CApplicationComponent
{
    /**
     * Init method for the application component mode.
     */
    public function init()
    {
        
    }

    /**
     * Encargado de controlar el envio de correos
     * @access public
     * @static
     * @param string $html cuerpo del mail
     * @param string $user direccion a quien sera enviado el mail
     * @param string $asunto es el asunto del correo
     * @param string $ruta es la ruta donde esta el archivo adjunto
     * @param array $copia direcciones que seran copiadas al envio del correo
     */
    public function enviar($html, $user, $asunto)
    {
        
        if(isset($html) && isset($user))
        {
            $mailer=Yii::createComponent('application.extensions.mailer.EMailer');
            $mailer=new PHPMailer();
            $mailer->IsSMTP();
            $mailer->Host=Yii::app()->params['host'];
            $mailer->Port=Yii::app()->params['port'];
            $mailer->SMTPSecure='tls';
            $mailer->Username=Yii::app()->params['username'];
            $mailer->SMTPAuth=true;
            $mailer->Password=Yii::app()->params['password'];
            $mailer->SetFrom('abelardol@sacet.biz','Pagina web');
            $mailer->IsHTML(true);
            $mailer->AddAddress($user);
            
            $mailer->CharSet='UTF-8';
            $mailer->Subject=Yii::t('', $asunto);
           
            $message=$html;
            $mailer->Body=$message;
            if($mailer->Send())
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
?>
