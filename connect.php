<?php
$Full_name = $_POST['fullname'];
$email = $_POST['email'];

//Database connection
$conn = new mysqli('webserver.c5outkkl1tmc.ap-south-1.rds.amazonaws.com','admin','admin123','webserver');
if($conn->connect_error){
    die('connection Failed : '.$conn->connect_error);
}else{
    $stmt = $conn->prepare("insert into employee(Full_name,email)
	   values(?,?)");
    $stmt->bind_param("ss",$Full_name,$email);
    $stmt->execute();
    echo "registration Successfully...";
    $stmt->close();
    $conn->close();}
?>