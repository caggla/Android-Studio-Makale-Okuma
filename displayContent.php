<?php
$conn = mysqli_connect("localhost", "root", "","interesting" );

if(!$conn){
	die("Connectioned failed!" . mysqli_connect_error());
}

$Title = $_POST["identifier_title"];
//$Title = "abc";

$mysql_query = "SELECT * FROM articles WHERE Title like '$Title'OR content like '$Title'";

$result = mysqli_query($conn,$mysql_query);

$content = "";
if(mysqli_num_rows($result)>0){
	$row = mysqli_fetch_assoc($result);
	$content = $row['Content'];
	
	echo $Title."~~".$content;
}
else{
	echo "false,1";
}

?>