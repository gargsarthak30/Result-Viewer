<form name="import" action="#"  method="POST" enctype="multipart/form-data">
    	<input type="file" name="file" /><br />
        <input type="submit" name="submit" value="Submit" />
</form>
<form action="#" method="POST">
	<input type="submit" name="publish" value="Publish"/>
</form>

<?php

if(isset($_POST["submit"]))
{
    $file = $_FILES['file']['tmp_name'];
    $handle = fopen($file, "r");
    $c = 0;
    while(($filesop = fgetcsv($handle, 1000, ",")) !== false)
    {
        $c = $c + 1;
        if ($c > 12)
		{     
		
		$s = $filesop[0];
        $r = $filesop[1];
		$m = $filesop[2];
		$mw =$filesop[3];
		$mw1 =$filesop[4];
		$mw2 =$filesop[5];
		$mw3 =$filesop[6];
		$mw4 =$filesop[7];
		
		
		
        $sql = mysql_query("INSERT INTO newexcel VALUES ('$s','$r','$m','$mw','$mw1','$mw2','$mw3','$mw4')");
        }
    }

        if($sql){
            echo "You database has imported successfully. You have inserted ". $c ." records";
        }else{
            echo "Sorry! There is some problem.";
        }

}

?>
<?php

if(isset($_POST["publish"]))
{
	
	$sql1=$this->db->query("update data set publish=1");
	if($this->db->affected_rows()>0)
{
	echo "Succesfully published.";
	
	
}
	
	
	
	
}


?>
