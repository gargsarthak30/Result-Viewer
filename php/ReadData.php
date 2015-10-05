<?php

$cid = $_GET["cid"];
$rno = $_GET["rno"];
$response = array();
	$conn=new PDO('mysql:host=localhost;dbname=result','root' ,'');
	$result=$conn->query("Select * from $cid where RegistrationNumber = '$rno'");
	
if($result->rowcount()>0)
{
$product = array();
$response["products"] = array();
foreach($result as $row)
{
$product["Semester"] = $row["Semester"];
$product["Score"] = $row["Score"];
$product["Subject"] = $row["Subject"];
$response["success"] = 1;

array_push($response["products"], $product);
}
echo json_encode($response);
}
else
{
$response["success"] = 0;
$response["message"] = "No record found.";
echo json_encode($response);
}
?>