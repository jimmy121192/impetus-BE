<?php
//header("Access-Control-Allow-Origin: *");
//header('Access-Control-Allow-Origin: http://localhost:8080');
header('Access-Control-Allow-Origin: https://impetus.netlify.app/');
header('Access-Control-Allow-Methods: GET, POST');
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");



$data = json_decode(file_get_contents("php://input"),true);

$avatar = $data['avatar'];
$description = $data['description'];
$sports = $data['sports'];
$username = $data['username'];

session_start();
$user_id = $_SESSION["user_id"];


$servername = "localhost"; $username = "jimmy"; $password = "Bao121192";

$dbname = "impetus_db";


$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error()); 

}
else{

    
    $sql = "UPDATE users SET sports = '{$sports}', avatar = '{$avatar}', description = '{$description}'  WHERE user_id = $user_id ;";
    $res = mysqli_query($conn,$sql);
    echo $user_id;
    echo $res;

    $sportArr = json_decode($sports);

    $sql3 = "DELETE FROM Badminton, Basketball, Esport, Soccer, Tennis, TableTennis, Volleyball WHERE user_id = $user_id ;";
    $res3 = mysqli_query($conn,$sql3);

    for ($i = 0; $i < sizeof($sportArr); $i++){
        // echo $sportArr[$i];
        $sql2 = "INSERT INTO $sportArr[$i] (user_id, username) VALUES ('{$user_id}','{$username}')";
        $res2 = mysqli_query($conn,$sql2);

    }

    if($res === TRUE){
        echo json_encode(true);
    }
    else{
        echo json_encode(false);
    }

} 


mysqli_close($conn);




?>