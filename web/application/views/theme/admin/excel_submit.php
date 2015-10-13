<!--Submit the Excel File-->

<?php

if(isset($_GET["submit"]))
{
	$file = $_FILES['file']['tmp_name'];
	$handle = fopen($file, "r");
	$c = 0;
	while(($filesop = fgetcsv($handle, 1000)) !== false)
	{
		$s = $filesop[0];
		$r = $filesop[1];
		$Marks= $filesop[2];
		
		echo $s;
		echo $r;
		echo $Marks;
		$sql = mysql_query("INSERT INTO data (S.no, Roll No.,Marks) VALUES ('$s','$r','$Marks')");
	}
	
		if($sql){
			echo "You database has imported successfully";
		}else{
			echo "Sorry! There is some problem.";
		}
}

?>