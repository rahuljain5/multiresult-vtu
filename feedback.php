<?php
include('database_connection.php');
$mail=$_POST['email'];
$message=$_POST['message'];
$query="insert into feedback(mail,message) values('".$mail."','".$message."');";

echo $query; 
$res=mysqli_query($connect,$query);
if($res) echo "success";
else "Failed";
?>
