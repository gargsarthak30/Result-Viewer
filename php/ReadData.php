<?php
session_start();
$cid = $_SESSION["cid"];
$rno = $_SESSION["rno"];
$response = array();

	$conn=new PDO('mysql:host=localhost;dbname=result','root' ,'');
	$result=$conn->query("Select * from $cid where RegistrationNumber = '$rno'");
	
if($result->rowcount()>0)
{
$product = array();

foreach($result as $row)
{
$product["Semester"] = $row["Semester"];
$product["Score"] = $row["Score"];
$response["success"] = 1;
$response["products"] = array();
array_push($response["products"], $product);
echo json_encode($response);
}
}
else
{
$response["success"] = 0;
$response["message"] = "No record found.";
echo json_encode($response);
}

?>
