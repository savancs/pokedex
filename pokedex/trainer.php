<?php
// database connection code
// $con = mysqli_connect('localhost', 'database_user', 'database_password','database');

print_r($_POST);

$con = mysqli_connect('localhost','root','RwTPsW4242', 'pokemon');


//if (mysqli_connect_errno()){
//die("Connection Error")
//}

// get the post records
$name = $_POST['name'];
$age = filter_input(INPUT_POST, "age", FILTER_VALIDATE_INT);
$height = filter_input(INPUT_POST, "height", FILTER_VALIDATE_INT);
$region = $_POST['region'];
$pokenum = filter_input(INPUT_POST, "pokenum", FILTER_VALIDATE_INT);

// database insert SQL code
$sql="INSERT INTO trainer (name, age, height, region, pokenum) VALUES ('$name', '$age', '$height', '$region','$pokenum' )";

// insert in database 
$rs = mysqli_query($con, $sql);

if($rs)
{
	echo "Trainer Records Inserted";
}


?>