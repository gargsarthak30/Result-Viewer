<?php
$user=$_POST["username"];
$pass=$_POST["password"];
$q=$this->db->query("select * from admin where Username='$user'");
$results=$q->result();
foreach($results as $row)
		{
			if(password_verify($pass, $row->Password))
			{


?>

<!--admin_main-->
    <section id="new">
	<br/>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>New Upload</h2>
                    <hr class="star-primary">
                </div>
            </div>
			<br/><br/>
<form name="import" action="#"  method="POST" enctype="multipart/form-data">
    	<input type="file" name="file" /><br />
        <input type="submit" name="submit" value="Submit" />
		Enter semester:<input type="text" name="semester"/>
		Enter course_code:<input type="text" name="course_code" />
		Enter school:<input type="text" name="school"/>
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
	$sem=$_POST["semester"];
	$course=$_POST["course_code"];
	$school=$_POST["school"];
	//echo $school;
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
		//$mw4 =$filesop[7];
		
		
		//echo $s.$r.$m.$mw.$mw1.$mw2.$mw3.$mw4;
		//echo "semester is".$sem;
		
		$sno="S_No";
		$roll="Roll_No";
		$sm="S-M";
		$mt="M-T";
		$et="E-T";
		$total="Total";
		$grade="Grades";
		
        $sql = $this->db->query("INSERT INTO $school VALUES ('$s','$r','$m','$mw','$mw1','$mw2','$mw3','$sem','$course')");
		
        }
    }

        if($this->db->affected_rows()>0){
            echo "You database has imported successfully.";
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
</div>
<br/><br/><br/><br/>
</section>
<?php

			}
			else
			{
				echo "wrong credentials try again";
				
			}
		}
?>