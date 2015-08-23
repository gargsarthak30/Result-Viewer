<?php
session_start();
$response = array();
require_once __DIR__ . '/db_connect.php';

$db = new DB_CONNECT();

$result = mysql_query("Select * from '$_SESSION["cid"]' where RegistrationNumber = '$_SESSION["rno"]'");

if(!empty($result))
{
if(mysql_num_rows($result)>0)
{
$result = mysql_fetch_array($result);
$product = array();
$product["Semester"] = $result["Semester"];
$product["Score"] = $result["Score"];
$response["success"] = 1;
$response["product"] = array();
array_push($response["product"], $product);
echo json_encode($response);
}
else
{
$response["success"] = 0;
$response["message"] = "No record found.";
echo json_encode($response);
}
else
{
$response["success"] = 0;
$response["message"] = "Required field(s) is missing";
echo json_encode($response);
}
?>

































