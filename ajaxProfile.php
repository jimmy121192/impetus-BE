<?php
// header("Access-Control-Allow-Origin: *");
//header('Access-Control-Allow-Origin: http://localhost:8080');
header('Access-Control-Allow-Origin: https://impetus.netlify.app/');
header('Access-Control-Allow-Methods: GET, POST');
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");


  session_start();  

  $email = $_SESSION["user_email"];
  $user_id = $_SESSION["user_id"];

  //$email = 'hoangbao1992@gmail.com';
  //$user_id = 1;

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

    $sql2 = "SELECT events.event_id,events.name,users_events.user_id, users_events.status FROM events LEFT JOIN users_events ON events.event_id = users_events.event_id WHERE users_events.status = 'Yes' AND users_events.user_id = $user_id;";

    $res2 = mysqli_query($conn,$sql2);

    $row2 = mysqli_fetch_all($res2, MYSQLI_ASSOC);

    $array = array();
    $array[] = $row;
    $array[] = $row2;

    if(!is_null($row['team'])){
      $sql3 = "SELECT role FROM {$row['team']} WHERE user_id = $user_id;";
      $res3 = mysqli_query($conn,$sql3); 
      $row3 = mysqli_fetch_assoc($res3);
      $array[] = $row3;

        if($row3['role']==='Captain'){
          $team = $row['team'];
          $sql4 = "SELECT * FROM JoinRequests WHERE teamname = '{$team}';";   
          $res4 = mysqli_query($conn,$sql4);    
          $row4 = mysqli_fetch_all($res4, MYSQLI_ASSOC);  
          $array[] = $row4;
        }


      
    }
    

    

    echo json_encode($array);
} 


mysqli_close($conn);




?>