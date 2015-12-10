<?php
$response = array();
if(isset($_GET['cid']) && isset($_GET['rno']) && isset($_GET['pass']) && $_GET['cid']!="" && $_GET['rno']!="" && $_GET['pass']!="")
	{
		$cid = $_GET["cid"];
		$rno = $_GET["rno"];
		$pass = $_GET["pass"];

		$conn=new PDO('mysql:host=localhost;dbname=result','root' ,'');
		$q=$conn->query("Select * from users where (Roll_No = '$rno' && College_Id = '$cid')");
		
		foreach($q as $row)
		{
			if(password_verify($pass, $row['Password']))
			{
				$response["success"] = 1;
				echo json_encode($response);
			}
			else
			{
				$response["success"] = 0;
				echo json_encode($response);
			}
		}
	}
else
	{
		$response["success"] = 0;
		echo json_encode($response);
	}

?>