<?php
if(isset($_POST['q1'],$_POST['q2'],$_POST['q3'],$_POST['q4'])){
    $db = new Mysqli("10.0.1.2/server.php","root","feedback");
    $q1 = (int)$q1; 
    $q2 = (int)$q2;
    $q3 = (int)$q3;
    $q4 = (int)$q4;
    $response = $db->real_escape_string($_POST['response']);
    $query = "INSERT INTO user_response SET mydata= '$q1','$q2','$q3','$q4','$response' ";
    
    $db->query($query);
}
?>
