<?php

$q1 = $_POST['q1'];
$q2 = $_POST['q2'];
$q3 = $_POST['q3'];
$q4 = $_POST['q4'];
$response = $_POST['response'];

$data = array("q1"=>$q1,"q2"=>$q2, "q3" =>$q3 , "q4" =>$q4, 'response'=>$response);
$string = http_build_query($data);

$ch = curl_init("http://10.0.1.2/server.php");
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, $string);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_exec($ch);
curl_close($ch);

?>


