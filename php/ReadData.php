<?php

$cid = $_GET["cid"];
$rno = $_GET["rno"];
$response = array();
	$conn=new PDO('mysql:host=localhost;dbname=result','root' ,'');
	$result=$conn->query("Select * from $cid where Roll_No = '$rno' order by Semester DESC");
	
if($result->rowcount()>0)
{
$product = array();
$response["products"] = array();
foreach($result as $row)
{
$product["Semester"] = $row["Semester"];
$product["Total"] = $row["Total"];
$product["Course_Code"] = $row["Course_Code"];
$product["S-M"] = $row["S-M"];
$product["M-T"] = $row["M-T"];
$product["E-T"] = $row["E-T"];
$product["Grades"] = $row["Grades"];
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