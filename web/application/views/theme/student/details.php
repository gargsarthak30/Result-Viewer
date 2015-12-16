
<link href = "<?=base_url('assets/signin/signin.css')?>" rel="stylesheet">
<script src="<?=base_url('assets/jquery-2.1.4.min.js')?>" type="text/javascript"></script>
<script src="<?=base_url('assets/signin/signin.js')?>" type="text/javascript"></script>

<br/>

<div class="container">
    <div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="panel panel-login">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-12">
							<center>
							<p class="active">Student Details</p>
							</center>
						</div>
					</div>
				<hr>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-12">
							<br/>
							<form id="login-form" action = "<?=site_url('student/result'.'/'.$who);?>" method="post" role="form">
								<div class="form-group">
									<input type="text" name="reg_no" tabindex="2" class="form-control" pattern="[1-9]{2}/[A-Za-z]{3}/[0-9]{3}" title=" 13/ICS/047 " placeholder="Registration No." value="<?=set_value('reg_no');?>" required autofocus>
								</div>	
								<br/>
								<div class="form-group">
									<div class="row">
										<div class="col-sm-6 col-sm-offset-3">
											<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="See Result">
											<br/><br/><br/>
											<center>
												Facing Problem ? <a href="<?=site_url('common/contact/homepage');?>" tabindex="5"> &nbsp;Contact Here</a>
											</center>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
 $('.selectpicker').selectpicker();
 </script>