<style>
#radio_btn
{
	background-color: #ECF0F1;
	border:2px solid #DCE4EC; 
	border-radius:4px;
	padding:9px 15px;
}
</style>
<section id="new">
	<br/>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h3 style="margin-top:-20px;">New Upload</h3>
                <hr class="star-primary">
            </div>
        </div>
		<br/>
		<?php echo validation_errors(); ?>
		<br/>
		<center>
		
		<form name="import" action="<?=site_url	('faculty/validate_upload');?>"  method="POST" enctype="multipart/form-data">
 			<input type="file" name="file" required/>
				<br/>
				<div class="col-md-5 input-group">
					<select class="selectpicker show-tick" data-width="100%" title='Select School' name="school" tabindex="1" value="" autofocus>
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
				<br>
				<div class="col-md-5 input-group" id="radio_btn">
						Course Type :
						<?=nbs(15);?>
						<input type="radio" name="type_course" value="th" tabindex="2" required> Theory
						<?=nbs(15);?>
						<input type="radio" name="type_course" value="lb" tabindex="3"> Lab
				</div>
				</br>
				<div class="col-md-5 input-group">
					<span class="input-group-addon">Enter Department</span>
					<input type="text" name="dept" class="form-control" tabindex="4" required/>
				</div>
				<br/>
				<div class="col-md-5 input-group">
					<span class="input-group-addon" id="sizing-addon1">Enter Subject Code</span>
					<input type="text" name="course_code" class="form-control" tabindex="5" required/>
				</div>
				<br/>
				<div class="col-md-5 input-group">
					<span class="input-group-addon">Enter Semester</span>
					<input type="text" name="semester" class="form-control" tabindex="6" required/>
				</div>
				<br/>

				<button class="btn btn-primary" type="submit" name="submit" tabindex="7">Submit</button>
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
