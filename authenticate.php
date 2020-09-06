<?php
// header("Access-Control-Allow-Origin: *");
//header('Access-Control-Allow-Origin: http://localhost:8080');
header('Access-Control-Allow-Origin: https://impetus.netlify.app');
header('Access-Control-Allow-Methods: GET, POST');
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");


$data = json_decode(file_get_contents("php://input"),true);

// echo($data['userEmail']);
// echo($data['userPassword']);
$email = $data['userEmail'];
$userPassword = $data['userPassword'];

$servername = "localhost"; $username = "ba6e0ff00803b6"; $password = "7da5be5a";

$dbname = "heroku_b8290af623dd61c";


$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error()); 

}
else{

    $sql = "SELECT * FROM users WHERE email='".$email."';";

    $res = mysqli_query($conn,$sql);

    $row = mysqli_fetch_assoc($res);
    // print_r($row);

    if(password_verify($userPassword,$row["hashed_password"])){

        session_start();
        $_SESSION["user_email"] = $email;
        $_SESSION["username"] = $row["firstname"];
        $_SESSION["user_id"] = $row["user_id"];

        $resp = array(true,$_SESSION["username"],$email, $row["avatar"], $row["user_id"], $row["type"], $row["team"], $row["score"], $row["rank"]);

        echo json_encode($resp);
   } else {

    echo json_encode("Failed!");

}
} 


mysqli_close($conn);




?>

