<?php
//header("Access-Control-Allow-Origin: *");
//header('Access-Control-Allow-Origin: http://localhost:8080');
header('Access-Control-Allow-Origin: https://impetus.netlify.app/');
header('Access-Control-Allow-Methods: GET, POST');
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");


$data = json_decode(file_get_contents("php://input"),true);


$servername = "localhost"; $username = "jimmy"; $password = "Bao121192";

$dbname = "impetus_db";


$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error()); 

}
else{

    $sql = "SELECT * FROM announcement;";
    $res = mysqli_query($conn,$sql);
    $row = mysqli_fetch_all($res, MYSQLI_ASSOC);
    // print_r($row);

    echo json_encode($row);
} 
mysqli_close($conn);




?>