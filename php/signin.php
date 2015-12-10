<?php
$response = array();
if(isset($_GET['rno'])&& $_GET['rno']!="")
	{
		//$cid = $_GET["cid"];
		$rno = $_GET["rno"];
		//$pass = $_GET["pass"];

		$conn=new PDO('mysql:host=localhost;dbname=result','root' ,'');
		$q=$conn->query("Select * from users where Roll_No = '$rno'");
		$count = $q->rowCount();
		if($count<1)
		{
				$response["success"] = 0;
				echo json_encode($response);
		}
		else{		$response["success"] = 1;
					echo json_encode($response);
		}
	}
	
else
	{
		$response["success"] = 0;
		echo json_encode($response);
	}

?>