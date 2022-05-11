<?php
$conn = mysqli_connect("localhost", "root", "","interesting" );

if(!$conn){
	die("Connectioned failed!" . mysqli_connect_error());
}

$MainTitle = $_POST["identifier_mainTitle"];
$Title = $_POST["identifier_title"];
$Content = $_POST["identifier_content"];

//$MainTitle = "Health";
//$Title = "Researchers consider Zika virus for brain cancer treatment";
//$Content = "Researchers in the U.K. are set to test whether the Zika virus can fight difficult-to-treat brain cancer by attacking its cells, potentially opening up new pathways to treat the aggressive disease. Researchers will focus on glioblastoma, which is the most common form of brain cancer and has a five-year survival rate of 5 percent, Reuters reported";

$query = "INSERT INTO `articles` (`ID`, `mainTitle`, `Title`, `Content`) VALUES (NULL, '$MainTitle', '$Title', '$Content')";

if(mysqli_query($conn,$query)){
	echo "<h2>Data Successfully Inserted!</h2>";
}
else{
	echo "<h2>Data was unable to be inserted into database :(.</h2>";
}



?>