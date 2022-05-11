<?php
$conn = mysqli_connect("localhost", "root", "","interesting" );

if(!$conn){
	die("Connectioned failed!" . mysqli_connect_error());
}

$mainTitle = $_POST["identifier_title"];
//$mainTitle = "Politics";

$mysql_query = "SELECT * FROM articles WHERE mainTitle like '$mainTitle'";

$result = mysqli_query($conn,$mysql_query);
$tarray = array();
$i = 0;
$titles = "";
if(mysqli_num_rows($result)>0){
	while($b = mysqli_fetch_array($result)) {
		array_push($tarray, $b['Title']);
		$titles .= gettext($tarray[$i]).",";
		$i++;
	}
	
	echo $titles;
}
else{
	echo "false,1";
}

?>