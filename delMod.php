<?php
//header("Access-Control-Allow-Origin: *");
//header('Access-Control-Allow-Origin: http://localhost:8080');
header('Access-Control-Allow-Origin: https://impetus.netlify.app/');
header('Access-Control-Allow-Methods: GET, POST');
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

$servername = "localhost"; $username = "jimmy"; $password = "Bao121192";
$dbname = "impetus_db";
$conn = mysqli_connect($servername, $username, $password, $dbname);
$id = $_GET['id'];

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error()); 

}
else{
    $sql = "UPDATE users SET type='User' WHERE user_id=$id;";
    $res = mysqli_query($conn,$sql);
} 
mysqli_close($conn);




?>