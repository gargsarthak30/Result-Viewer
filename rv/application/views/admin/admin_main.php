<form name="import" action="#"  method="POST" enctype="multipart/form-data">
    	<input type="file" name="file" /><br />
        <input type="submit" name="submit" value="Submit" />
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
        if ($c == 1)
              continue;
		
		$s = $filesop[0];
        $r = $filesop[1];
		$m = $filesop[2];
		$mw =$filesop[3];
		
		
        $sql = mysql_query("INSERT INTO data VALUES ('$s','$r','$m','$mw')");
        
    }

        if($sql){
            echo "You database has imported successfully. You have inserted ". $c ." records";
        }else{
            echo "Sorry! There is some problem.";
        }

}

?>