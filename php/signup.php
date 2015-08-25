<?php

 
// array for JSON response
$response = array();
 
// check for required fields
if (isset($_POST['cid']) && isset($_POST['rno']) && isset($_POST['pass'])) {
 
    $cid = $_POST['cid'];
    $rno = $_POST['rno'];
    $pass = $_POST['pass'];
	
	$conn=new PDO('mysql:host=localhost;dbname=result','root' ,'');
	$q=$conn->query("INSERT INTO users (College_Id,RegistrationNumber,Password)VALUES('$cid','$rno','$pass');");
 
    
    // check if row inserted or not
    if ($q->rowcount()>0) {
        // successfully inserted into database
        $response["success"] = 1;
        $response["message"] = "Product successfully created.";
 
        // echoing JSON response
        echo json_encode($response);
    } else {
        // failed to insert row
        $response["success"] = 0;
        $response["message"] = "Oops! An error occurred.";
 
        // echoing JSON response
        echo json_encode($response);
    }
} else {
    // required field is missing
    $response["success"] = 0;
    $response["message"] = "Required field(s) is missing";
 
    // echoing JSON response
    echo json_encode($response);
}
?>