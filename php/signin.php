<?php
$response = array();
if(!empty($_GET["cid"]) && !empty(($_GET["rno"])) && !empty($_GET["pass"]))
{
$cid = $_GET["cid"];
$rno = $_GET["rno"];
$pass = $_GET["pass"];

	$conn=new PDO('mysql:host=localhost;dbname=result','root' ,'');
	$q=$conn->query("Select * from users where (RegistrationNumber = '$rno' && Password = '$pass' && College_Id = '$cid')");
	
if($q->rowcount()>0)
{

$response["success"] = 1;
echo json_encode($response);
session_start();
$_SESSION["cid"] = $cid;
$_SESSION["rno"] = $rno;

}
else
{
$response["success"] = 0;
echo json_encode($response);
}
}
else {
$response["success"] = 0;
echo json_encode($response);
}

