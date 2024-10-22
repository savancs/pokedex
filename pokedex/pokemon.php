<?php
// database connection code
// $con = mysqli_connect('localhost', 'database_user', 'database_password','database');

print_r($_POST);

$con = mysqli_connect('localhost','root','RwTPsW4242', 'pokemon');


//if (mysqli_connect_errno()){
//die("Connection Error")
//}

// get the post records
$num = filter_input(INPUT_POST, "num", FILTER_VALIDATE_INT);
$name = $_POST['name'];
$type = $_POST['type'];
$height = filter_input(INPUT_POST, "height", FILTER_VALIDATE_INT);
$weight = filter_input(INPUT_POST, "weight", FILTER_VALIDATE_INT);
$region = $_POST['region'];


// database insert SQL code
$sql="INSERT INTO pokemon (num, name, type, height, weight, region) VALUES ('$num', '$name', '$type', '$height','$weight', '$region' )";

// insert in database 
$rs = mysqli_query($con, $sql);

if($rs)
{
	echo "Pokemon Records Inserted";
}


?>