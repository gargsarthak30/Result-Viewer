<?php
$fac_username = $this->session->userdata('user_name');
$fac_id_q = $this->db->query("SELECT Faculty_Id FROM faculty WHERE Username = '$fac_username';");
$fac_id = $fac_id_q->row()->Faculty_Id;
?>

<!--admin_main-->
    <section id="new">
	<br/>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h3 style="margin-top:-20px;">New Upload</h3>
                    <hr class="star-primary">
                </div>
            </div>
			<br/><br/>
			<center>
<form name="import" action="#"  method="POST" enctype="multipart/form-data">
 
		<input type="file" name="file" required/>
		
		<br/>
		
		<div class="col-md-5 input-group">
			<select class="selectpicker show-tick" data-width="100%" required title='Select School' name="school" tabindex="1" value="" autofocus>
											<?php
												$school_list = $this->db->query("SELECT College_Id FROM master");
												foreach($school_list->result() as $school)
												{
											?>
											<option><?=ucfirst($school->College_Id);?></option>
											<?php
												}
											?>
  			</select>
		</div>

		<br/>

		<div class="col-md-5 input-group">
			<span class="input-group-addon">Enter Department</span>
			<input type="text" name="dept" class="form-control" required/>
		</div>

		<br/>

		<div class="col-md-5 input-group">
			<span class="input-group-addon" id="sizing-addon1">Enter Subject Code</span>
			<input type="text" name="course_code" class="form-control" required/>
		</div>
		
		<br/>
		
		<div class="col-md-5 input-group">
			<span class="input-group-addon">Enter Semester</span>
			<input type="text" name="semester" class="form-control" required/>
		</div>
		
		<br/>
		
		<button class="btn btn-primary" type="submit" name="submit">Submit</button>
		
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
	$department=$_POST["dept"];
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

        if($this->db->affected_rows()>0)
        {
            echo "You database has imported successfully.";
            $sheets = $this->db->query("INSERT INTO excel_details(Faculty_Id, College_Id, Semester, Department, Course_Code) VALUES ('$fac_id','$school','$sem','$department','$course');");
        }
        else
        {
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
<br/>
</section>
