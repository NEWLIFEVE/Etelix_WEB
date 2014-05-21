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
    public function enviar($html, $user, $asunto, $ruta, $copia=null)
    {
        if(isset($html) && isset($user))
        {
            $mailer=Yii::createComponent('application.extensions.mailer.EMailer');
            $mailer=new PHPMailer();
            $mailer->IsSMTP();
            $mailer->Host='mail.etelix.com';
            $mailer->Port='475';
            $mailer->SMTPSecure='tls';
            $mailer->Username='renoc@etelix.com';
            $mailer->SMTPAuth=true;
            $mailer->Password="$4c3t.renoc";
            $mailer->SetFrom('renoc@etelix.com','RENOC');
            $mailer->IsHTML(true);
            $mailer->AddAddress($user);
            if($copia!=null)
            {
                foreach ($copia as $key => $value)
                {
                    $mailer->addCC($value);
                }
            }
            $mailer->CharSet='UTF-8';
            $mailer->Subject=Yii::t('', $asunto);
            $mailer->AddAttachment($ruta); //Archivo adjunto
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
