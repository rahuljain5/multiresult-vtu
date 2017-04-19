<?php
echo 
"<html>
 <head>
<title>update</title>
<meta name=viewport content=width=device-width,initial-scale=1>
<link rel=stylesheet href=bootstrap.min.css></link>
<script href=bootstrap.min.js></script>
<body>
<nav class=navbar navbar-inverse>
	<div class=navbar-header><a href=index.html>
<div class=navbar-header>
<button type=button class=navbar-toggle data-toggle=collapse data-target=#myNavbar>
<span class=icon-bar></span>
<span class=icon-bar></span>
<span class=icon-bar></span>
</button>
<h1 id=head1 class=navbar-brand navbar-text style=color:white; font-size:44px;>Toce-results</h1></a>
	</div>
	 <div class=collapse navbar-collapse navbar-text id=myNavbar>
<ul class=nav navbar-nav navbar-right navbar-text style=color:white; font-size:34px; >
      <li><a href=index.html>Home</a></li>
      <li><a href=contact.html>Contact</a></li>
      <li class=active><a href=#>Admin</a></li>
    </ul>	
	</div>
</nav>
<br/>
<div class=container style=text-align:center>
	<form class=form-inline method=post style=font-size:30px; action=testcscs.php>
	<h1>CHOOSE 1 OF THE FOLLOWING</h1><hr/>
	<h3>Enter the first 7 letters of the USN.</h3>
	 <form method=post action=testcscs.php>
	 <h3><strong>USN:</strong></h3>
	 <input name=usn placeholder='First 7 digits of usn here' size=20 pattern=[1-4]{1}[a-z]{2}[1-9]{2}[a-z]{2} autocomplete=off required value=></input>
	 <br/>
	 <h3><strong>SEM:</strong></h3> 
	 <select size=1 required=required name=semester autocomplete=off required>
            <option selected=selected value=0 disabled>-----</option>
            <option value=1>1</option>
            <option value=2>2</option>
            <option value=3>3</option>
            <option value=4>4</option>
            <option value=5>5</option>
            <option value=6>6</option>
            <option value=7>7</option>
            <option value=8>8</option>	
	 </select>
	 <br/>
	 
	<input type=radio name=restype value=regular checked>Regular</input>&nbsp&nbsp
	<input type=radio name=restype value=reval >Reval</input>&nbsp&nbsp
	<input type=radio name=restype value=arrears >Arrears</input>&nbsp&nbsp<br/><br/>
	<button value=datasubmit name=submit style='display:inline-block; color:white; background-color:black; width:100px; height:45px; font-size:20px;'>Submit!</button>
</form>
</div>
</body>
<head>
</html>
";
?>

