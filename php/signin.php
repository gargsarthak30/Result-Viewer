<?php
$response = array();

require_once __DIR__ . '/db_connect.php';
$db = new DB_CONNECT();

if(isset($_GET["cid"])) && isset(($_GET["rno"])) && isset(($_GET["pass"]))
{
$cid = $_GET["cid"];
$rno = $_GET["rno"];
$pass = $_GET["pass"];

$result = mysql_query("Select * from users where (RegistrationNumber = '$rno' && Password = '$pass' && College_Id = '$cid')");
if(!empty($result))
{
if(mysql_fetch_array($result) > 0)
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
}
else{
$response["success"] = 0;
echo json_encode($response);
}
