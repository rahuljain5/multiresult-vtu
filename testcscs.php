<?php
include('database_connection.php');
include('simple_html_dom.php');
set_time_limit(0);
$GLOBALS['x']=$connect;
echo "<meta name=viewport content=width=device-width, initial-scale=1><link rel=stylesheet href=bootstrap.min.css>";
function database_update()
{
	$exam_id="";
	if($_POST['restype']=="regular")
		$location="http://result.vtu.ac.in/cbcs_results20".date("y").".aspx?";
	else if($_POST['restype']=="arrears")
		$location="http://result.vtu.ac.in/cbcs_results20".date("y")."Arrears.aspx?";
	else if($_POST['restype']=="reval")
	{
		$location="http://result.vtu.ac.in/cbcs_resultsRV20".date("y").".aspx?";
		if($_POST['semester']%2==0)
			$examid="&examid=June/Jul%2020".date("y");
		else $examid="&examid=Dec/Jan%2020".date("y");
	}
	$dom=new simple_html_dom();
	$a_sem="sem=".$_POST['semester'];
	for($index=1;$index<130;$index++)
	{
		//make index 3 digit
		if($index<100) $index=str_pad($index, 3, "0", STR_PAD_LEFT);
		//concatenation
			$a_usn="usn=".$_POST['usn'].$index;
		if(!$_POST['restype']=="reval")$url = $loc.$a_usn.'&'.$a_sem;
		else $url=$location.$a_usn.'&'.$a_sem.$exam_id;
		$dom = file_get_html($url);
		//getting student details;
		if($dom){		
		$test = $dom->find('input[@name=txtUSN]',0)->value;
		//if the usn exists or not
		if($test != NULL)
		{
			$s_detail[0] = $dom->find('input[@name=txtUSN]',0)->value;
			$s_detail[1] = $dom->find('input[@name=txtName]',0)->value;
			$s_detail[2] = $dom->find('input[@name=txtSem]',0)->value;
			$sgpa=$dom->find('span[@id=lblSGPA]',0)->innertext;
			$sgpa=strip_tags($sgpa);
			$totalcp=$dom->find('span[@id=lblcptotal]',0)->innertext;
			$totalcp=strip_tags($totalcp);
			$query1="INSERT INTO student_details VALUES('$s_detail[0]','$s_detail[1]');";
			$query_result[0]=mysqli_query($GLOBALS['x'],$query1);
			//getting subject codes
			for($i=0;$i<8;$i++)
			{
				$j=$i+1;
				$subcodes[$i][0]= $dom->find('input[@name=txtCode'.$j.']',0)->value;
				$subcodes[$i][1]= $dom->find('input[@name=txtSub'.$j.']',0)->value;
				if($subcodes[$i] != NULL)
				{
					$query2="INSERT INTO subjects VALUES('".$subcodes[$i][0]."','".$subcodes[$i][1]."');";
					$query_result[1]=mysqli_query($GLOBALS['x'],$query2); 
					continue;
				}
				else break;
			}
			for($i=0;$i<8;$i++)
			{	
				$j=$i+1;
				if($subcodes[$i] != NULL)
				{
					$submarks[$i]= $dom->find('input[@name=txtGardeLetter'.$j.']',0)->value;				
					if($_POST['restype']=="arrears" ||$_POST['restype']=="reval"){
					$qu="update table results set s".$j."='".$submarks[$i]."' where usn='".$s_detail[0]."' and sem=".$_POST['semester'].";";
					$query_result[2]=mysqli_query($GLOBALS['x'],$qu);}				
				}
			}
		}
		else continue;}
	if($_POST['restype']=="regular")
	{
		$qu="insert into results values('".$s_detail[0]."',".$s_detail[2].",'".$submarks[0]."','".$submarks[1]."','".$submarks[2]."','".$submarks[3]."','".$submarks[4]."','".$submarks[5]."','".$submarks[6]."','".$submarks[7]."',".$totalcp.",".$sgpa.");";
$query_result[2]=mysqli_query($GLOBALS['x'],$qu);
	}
	}
}
function retreive($start,$end,$sem)
{
	$deptid=substr($start,5,2);
	$str="<table class=table>";	
	$retreive_query="select usn,s1,s2,s3,s4,s5,s6,s7,s8,cpa,sgpa from results r where usn between '$start' and '$end' and sem=$sem order by usn;";
	$res=mysqli_query($GLOBALS['x'],$retreive_query);
	if($res)
	{
		$r=mysqli_query($GLOBALS['x'],"select * from sub_list where sem='$sem' and deptid='$deptid'");
		$str .="<th><tr>";
		$str .="<td>"."USN"."</td>";
		while($ro = mysqli_fetch_array($r,MYSQLI_ASSOC)) {
			for($i=1;$i<9;$i++)			
			$str .= "<td>".$ro['sub'.$i]."</td>";
			}
		 $str .="<td>"."CPA"."</td>";
		$str .="<td>"."SGPA"."</td>";
		 $str .="</tr></th>";
		while($row = mysqli_fetch_array($res,MYSQLI_ASSOC)) {
			$str .="<tr>";
			$str .="<td>".$row['usn']. "</td>";
			for($i=1;$i<9;$i++)
			$str .="<td>".$row['s'.$i]."</td>";
			$str .="<td>".$row['cpa']."</td>";			
			$str .="<td>".$row['sgpa']."</td>";			
			$str .="</tr>";
		}
		$str .="</table>";echo $str;
	}


}
function class_result($usn,$sem,$ord)
{
	$deptid=substr($usn,5,6);
	$str = "<table class=table>";
	$query="select r.usn,name,s1,s2,s3,s4,s5,s6,s7,s8,cpa,sgpa from results r,student_details s where s.usn=r.usn and r.usn like \"".$usn."%\" and sem='$sem' order by $ord;";
	$query_result=mysqli_query($GLOBALS['x'],"$query");
		if($query_result)
		{
			$r=mysqli_query($GLOBALS['x'],"select * from sub_list where sem='$sem' and deptid='$deptid'");
			$str .= "<th><tr>"."<td>"."USN"."</td><td>"."NAME"."</td>";
			while($ro = mysqli_fetch_array($r,MYSQLI_ASSOC)) {
			for($i=1;$i<9;$i++)			
			$str .= "<td>".$ro['sub'.$i]."</td>";
			}
			$str .="<td>"."CPA"."</td>";
			$str .="<td>"."SGPA"."</td>";
			$str .="</tr></th>";
			while($row = mysqli_fetch_array($query_result,MYSQLI_ASSOC)) {
				$str .= "<tr>";
				$str .= "<td>".$row['usn']."</td>";
				$str .= "<td>".$row['name']."</td>";
				for($i=1;$i<9;$i++)
				$str .= "<td>".$row['s'.$i]."</td>";
				$str .="<td>".$row['cpa']."</td>";			
				$str .="<td>".$row['sgpa']."</td>";
				$str .= "</tr>";
				
			}
			echo "</table>";echo $str;
		}
}
function download($usn,$sem)
{
	$query="select r.usn,name,s1,s2,s3,s4,s5,s6,s7,s8,cpa,sgpa from results r,student_details s where s.usn=r.usn and r.usn like \"$usn%\" and sem=$sem order by usn;";
	$res=mysqli_query($GLOBALS['x'],$query);
	if($res)
	{
	print_r($res);
	// Clear any previous output
	ob_end_clean();
	// getting field names
	$num_fields = mysqli_num_fields($res);
	// Fetch MySQL result headers
	$headers = array();
	$headers[] = "SL.No";
	for ($i = 0; $i < $num_fields; $i++) {
		    $headers[] = strtoupper(mysqli_field_name($res , $i));
	}	// Filename with current date
	$current_date = date("y/m/d");
	$filename = "result_download for ". $usn. $current_date . ".csv";
	// Open php output stream and write headers
	$fp = fopen('php://output', 'w');
	if ($fp && $res) {
	    header('Content-Type: text/csv');
	    header('Content-Disposition: attachment; filename='.$filename);
	    header('Pragma: no-cache');
	    header('Expires: 0');
	    echo "results for the class ".$usn." \n\n";
	    // Write mysql headers to csv
	    fputcsv($fp, $headers);
	    $row_tally = 0;
	    // Write mysql rows to csv
	    while ($row = mysqli_fetch_array($res,MYSQLI_NUM)) {
		    $row_tally = $row_tally + 1;
		    echo $row_tally.",";
	        fputcsv($fp, array_values($row));
	    	}
	    }
	  }
	
}	
function mysqli_field_name($result, $field_offset)
{
    $properties = mysqli_fetch_field_direct($result, $field_offset);
    return is_object($properties) ? $properties->name : null;
}
function subanalyse($scode,$snum,$sem)
{
$fail=0;$pass=0;$e=0;$d=0;$c=0;$b=0;$a=0;$sp=0;$s=0;
$length=strlen($scode);		
$subject=substr($scode,$length-1,1);
$query="SELECT s".$subject." FROM `results` r WHERE usn LIKE \"".$snum."%"."\" and sem=".$sem.";";
$query_result=mysqli_query($GLOBALS['x'],"$query");
if($query_result)
	{
	while($row = mysqli_fetch_array($query_result,MYSQLI_ASSOC)) {
	if($row['s'.$subject]=='F') $fail++;
	else if($row['s'.$subject]=='S+'){$sp++; $pass++;}
	else if($row['s'.$subject]=='S'){$s++; $pass++;}
	else if($row['s'.$subject]=='A'){$a++; $pass++;}
	else if($row['s'.$subject]=='B'){$b++; $pass++;}
	else if($row['s'.$subject]=='C'){$c++; $pass++;}
	else if($row['s'.$subject]=='D'){$d++; $pass++;}
	else if($row['s'.$subject]=='E'){$e++; $pass++;}
	}		
	$anotherquery="SELECT sub_name FROM `subjects` r WHERE sub_code=\"".$scode."\";";
	$aquery_result=mysqli_query($GLOBALS['x'],"$anotherquery");
	$ro=mysqli_fetch_array($aquery_result,MYSQLI_ASSOC);
	$sname=$ro['sub_name'];
	$r=mysqli_query($GLOBALS['x'],"select count(*) from results WHERE usn LIKE \"".$snum."%"."\" and sem=".$sem.";");
	$r=mysqli_fetch_array($r,MYSQLI_ASSOC);	
	$total=$r['count(*)'];
	$passpercent=($pass/$total) *100;
	$passpercent=number_format((float)$passpercent,2,'.','');
	echo "<h1 style=text-align:center;><b>Subject Name:</b>".$sname."</h1><br/>";
	echo "<h1 style=text-align:center;><b>Total no.:</b>".$total."</h1><br/>";
	echo "<h1 style=text-align:center;><b>Pass:</b>".$pass."</h1><br/>";
	echo "<h1 style=text-align:center;><b>Fail:</b>".$fail."</h1><br/>";
	echo "<h1 style=text-align:center;><b>S+:</b>".$sp."&nbsp&nbsp&nbsp<b>S:</b>".$s."&nbsp&nbsp&nbsp<b>A:</b>".$a."&nbsp&nbsp&nbsp<b>B:</b>".$b."&nbsp&nbsp&nbsp<b>C:</b>".$c."&nbsp&nbsp&nbsp<b>D:</b>".$d."&nbsp&nbsp&nbsp<b>E:</b>".$e."</h1><br/>";
	echo "<h1 style=text-align:center;><b>Pass %:</b>".$passpercent."</h1><br/>";	
	echo "<div class=progress style=height:50px;><div class='progress-bar progress-bar-striped progress-bar-success' role=progressbar aria-valuenow=".$passpercent."aria-valuemin=0 aria-valuemax=100 style=width:".$passpercent."%; ><h2>".$passpercent."%</h2></div></div>";	



	}
}
$examid=0;
if(($_POST['submit']=="submit1") || ($_POST['submit']=="submit3"))
$uno=$_POST['usn'];
if($_POST['submit']=="submit1")
$order=$_POST['order'];
if($_POST['submit']=="submit2"){$strt=$_POST['start'];
$finish=$_POST['end'];}
$semester=$_POST['semester'];
$sub=$_POST['submit'];
switch($sub)
	{
	case "submit1":class_result($uno,$semester,$order);break;
	case "submit2":retreive($strt,$finish,$semester);break;
	case "submit3":download($uno,$semester); break;
	case "submit4":subanalyse($_POST['subcode'],$_POST['usn'],$semester); break;
	case "datasubmit":database_update();
	default:break;
	}
?>


