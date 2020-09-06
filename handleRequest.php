<?php
//header("Access-Control-Allow-Origin: *");
//header('Access-Control-Allow-Origin: http://localhost:8080');
header('Access-Control-Allow-Origin: https://impetus.netlify.app');
header('Access-Control-Allow-Methods: GET, POST');
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");


$data = json_decode(file_get_contents("php://input"),true);
print_r($data);
$user_id = $data['user_id'];
$name = $data['username'];
$teamname = $data['teamname'];
$rank = $data['rank'];
$score= $data['score'];

$servername = "us-cdbr-east-02.cleardb.com"; $username = "ba6e0ff00803b6"; $password = "7da5be5a"; $dbname = "heroku_b8290af623dd61c";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error()); 

}
else{
    $pst = new DateTimeZone('America/Los_Angeles');
    $current = new DateTime('',$pst); // first argument uses strtotime parsing
    $date = $current->format('Y-m-d'); 

    $sql1 = "DELETE FROM JoinRequests WHERE user_id = $user_id";
    $res1 = mysqli_query($conn,$sql1);

    if($teamname){
        
        $sql2 = "INSERT INTO $teamname (user_id,username, score, rank, role, joindate) VALUES ('{$user_id}','{$name}','{$score}','{$rank}','Member','{$date}');";
        $res2 = mysqli_query($conn,$sql2);
        $sql3 = "UPDATE users SET team = '{$teamname}' WHERE user_id = $user_id;";
        echo $sql3;
        $res3 = mysqli_query($conn,$sql3);
    }
        
    if($res1){
        echo json_encode(true);
    } else {
        echo json_encode(false);
    }

} 
mysqli_close($conn);
?>