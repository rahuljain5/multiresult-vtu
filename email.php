 <?php
         $to = "rjain.rahul5@gmail.com";
         $subject = "response vtu-result-page";
         
         $message = "<b>".$_POST['message']."</b>";
         $message .= "<h1>feedback from toce-results.webutu.com.</h1>";
         
         $header = "From:".$_POST['mailid']."\r\n";
         $header .= "Cc:afgh@somedomain.com \r\n";
         $header .= "MIME-Version: 1.0\r\n";
         $header .= "Content-type: text/html\r\n";
         
         $retval = mail ($to,$subject,$message,$header);
         
         if( $retval == true ) {
            echo "Message sent successfully...";
         }else {
            echo "Message could not be sent...";
         }
      ?>
