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

if (!$conn ||!$data['register']) {
    die("Connection failed: " . mysqli_connect_error()); 

}
else{
    
    $pst = new DateTimeZone('America/Los_Angeles');
    $current = new DateTime('',$pst); // first argument uses strtotime parsing
    $time = $current->format('Y-m-d H:i:s'); 

    $event_id = $data['register']['event_id'];
    $sql1 = "SELECT * FROM users_events WHERE event_id=$event_id AND user_id={$data['register']['userID']}";
    $res1 = mysqli_query($conn,$sql1);
    $row1 = mysqli_fetch_assoc($res1);

  
    if(is_null($row1)){
        $sql2 = "INSERT INTO users_events (user_id,event_id,time, status) VALUES ('{$data['register']['userID']}','{$data['register']['event_id']}','{$time}','Yes')";
        $res2 = mysqli_query($conn,$sql2);
        $row2 = mysqli_fetch_assoc($res2);
    }
    else{
        $sql2 = "UPDATE users_events SET status='Yes' WHERE user_id={$data['register']['userID']} AND event_id=$event_id;";
        $res2 = mysqli_query($conn,$sql2);
        $row2 = mysqli_fetch_assoc($res2);
    }

    if($res2){
        echo json_encode($data['register']['event_id'],JSON_INVALID_UTF8_IGNORE);
    } else {
        echo json_encode(false);
    
} 
}

mysqli_close($conn);
?>