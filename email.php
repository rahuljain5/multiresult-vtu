<?php
  include('class.phpmailer.php');
 include('class.smtp.php');
if(isset($_POST['mail']))
{
$to="rjain.rahul5@gmail.com";
$from=$_POST['email'];
$from_name="Multiple Results"; 
$subject="Feedback";
$body=$_POST['content'];
$email = new PHPMailer();
$email->From      = $from;
$email->FromName  = $from_name;
$email->Subject   = $subject;
$email->Body      = $body;
$email->AddAddress($to);
if(!$email->Send()) {
		$error = 'Mail error: '.$mail->ErrorInfo; 
		return false;
	}
            else {
		$error = 'Message sent!';
		echo "<h1 style="text-align:center;"><b>Success!</b></h1>";
	}
}


?>
