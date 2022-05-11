<?php
$conn = mysqli_connect("localhost", "root", "","interesting" );

if(!$conn){
	die("Connectioned failed!" . mysqli_connect_error());
}


$user_name = $_POST["identifier_name"];
$user_pass = $_POST["identifier_password"];
$user_email = $_POST["identifier_email"];




$query = "INSERT INTO users(ID,name,email,password) VALUES (NULL,'$user_name','$user_email','$user_pass')";

if(mysqli_query($conn,$query)){
	echo "<h2>Data Successfully Inserted!</h2>";
}
else{
	echo "<h2>Data was unable to be inserted into database :(.</h2>";
}



?>