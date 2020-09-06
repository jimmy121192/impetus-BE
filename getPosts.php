<?php
//header("Access-Control-Allow-Origin: *");
//header('Access-Control-Allow-Origin: http://localhost:8080');
header('Access-Control-Allow-Origin: https://impetus.netlify.app');
header('Access-Control-Allow-Methods: GET, POST');
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");


$data = json_decode(file_get_contents("php://input"),true);


$servername = "us-cdbr-east-02.cleardb.com"; $username = "ba6e0ff00803b6"; $password = "7da5be5a";

$dbname = "heroku_b8290af623dd61c";


$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error()); 

}
else{

    $pst = new DateTimeZone('America/Los_Angeles');
    $current = new DateTime('',$pst); // first argument uses strtotime parsing
    $time = $current->format('Y-m-d'); 

    $sql = "SELECT * FROM posts ORDER BY convert(date,DATE) DESC, time DESC LIMIT 20;";

    $res = mysqli_query($conn,$sql);

    $row = mysqli_fetch_all($res, MYSQLI_ASSOC);
    // print_r($row);

    echo json_encode($row,JSON_INVALID_UTF8_IGNORE);
} 
mysqli_close($conn);




?>