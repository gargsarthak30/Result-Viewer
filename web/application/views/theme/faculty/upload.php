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
		<form name="import" action="<?=site_url('faculty/upload_db');?>"  method="POST" enctype="multipart/form-data">
 			<input type="file" name="file" required/>
				<br/>
				<div class="col-md-5 input-group">
					<select class="selectpicker show-tick" data-width="100%" required title='Select School' name="school" tabindex="1" value="" autofocus>
						<?php
							
							foreach($sch_list as $school)
							{
						?>
						<option><?=ucfirst($school->School);?></option>
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
	</div>
	<br/>
</section>

<?php
    $flash = $this->session->flashdata('uploaded');
    if(!empty($flash))
    {
?>
        <script>
            var m = '<?=$flash;?>';
            alert(m);
        </script>
<?php
    }
?>
