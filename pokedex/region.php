<?php
// database connection code
// $con = mysqli_connect('localhost', 'database_user', 'database_password','database');

print_r($_POST);

$con = mysqli_connect('localhost','root','RwTPsW4242', 'pokemon');
//mysqli_select_db('pokemon', $con);


//if (mysqli_connect_errno()){
//die("Connection Error")
//}

// get the post records
$name = $_POST['name'];
$cardinality = $_POST['cardinality'];
$professor = $_POST['professor'];


// database insert SQL code
$sql="INSERT INTO region (name, cardinality, professor) VALUES ('$name', '$cardinality', '$professor' )";

// insert in database 
//mysqli_query($sql, $con);
$rs = mysqli_query($con, $sql);

if($rs)
{
	echo "Region Records Inserted";
}


?>