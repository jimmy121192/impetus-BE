<?php
//header("Access-Control-Allow-Origin: *");
//header('Access-Control-Allow-Origin: http://localhost:8080');
header('Access-Control-Allow-Origin: https://impetus.netlify.app/');
header('Access-Control-Allow-Methods: GET, POST');
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

$data = json_decode(file_get_contents("php://input"),true);

$firstname = $data['firstName'];
$lastname = $data['lastName'];
$email = $data['userEmail'];
$userPassword = $data['userPassword'];
$sports = $data['sports'];

$servername = "localhost"; $username = "jimmy"; $password = "Bao121192";

$dbname = "impetus_db";


$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn || !$firstname || !$lastname || !$email) {
    die("Connection failed: " . mysqli_connect_error()); 

}
else{

    $sql2 = "SELECT * FROM users WHERE email='".$email."';";
    $res2 = mysqli_query($conn,$sql2);
    $row2 = mysqli_fetch_assoc($res2);

    if(is_null($row2)){

    $pst = new DateTimeZone('America/Los_Angeles');
    $current = new DateTime('',$pst); // first argument uses strtotime parsing
    $signup_time = $current->format('F j, Y'); // "November 6, 2010"

    $hashedpassword = password_hash($userPassword,PASSWORD_BCRYPT);

    $sql = "INSERT INTO users (firstname,lastname,email,type,rank, score, hashed_password,sports,signupdate,avatar) VALUES ('{$firstname}','{$lastname}','{$email}','User','Private','4000','{$hashedpassword}','{$sports}','{$signup_time}','https://jimmytruong.ca/impetus/images/place-holder-avatar.jpg')";
    $res = mysqli_query($conn,$sql);

    $last_id = mysqli_insert_id($conn); //Get the newest user_id
    $user_name = $firstname." ".$lastname;
    $sportArr = json_decode($sports);

    for ($i = 0; $i < sizeof($sportArr); $i++){
        // echo $sportArr[$i];
        $sql2 = "INSERT INTO $sportArr[$i] (user_id, username) VALUES ('{$last_id}','{$user_name}')";
        $res2 = mysqli_query($conn,$sql2);
    }

    if($res === TRUE){
        echo json_encode(true);
    }
    else{
        echo json_encode(false);
    }
             
    }
    else{
        
        echo json_encode('email');
    }


    
    

} 


mysqli_close($conn);




?>