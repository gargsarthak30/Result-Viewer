<!--signin&register-->
	<link href = "<?=base_url('assets/signin/signin.css')?>" rel="stylesheet">
	<script src="<?=base_url('assets/jquery-2.1.4.min.js')?>" type="text/javascript"></script>
	<script src="<?=base_url('assets/signin/signin.js')?>" type="text/javascript"></script>

<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<center>
								<a href="#" class="active" id="login-form-link">Login</a>
								</center>
							</div>
							<div class="col-xs-6">
								<center>
								<a href="#" id="register-form-link">Register</a>
								</center>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action = "<?=site_url('student/validate_signin');?>" method="post" role="form" style="display: block;">
									<?php echo validation_errors(); ?>
									<div class="form-group">
										<input type="text" name="college_id" tabindex="1" class="form-control" placeholder="College Id" required>
									</div>
									<div class="form-group">
										<input type="text" name="reg_no" tabindex="2" class="form-control" placeholder="Registration No." required>
									</div>
									<div class="form-group">
										<input type="password" name="pass" tabindex="3" class="form-control" placeholder="Password" required>
										<br/>
									</div>									
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Log In">
											</div>
										</div>
									</div>
								</form>
								
								<form id="register-form" action="<?=site_url('student/signup_complete');?>" method="post" role="form" style="display: none;">
									<div class="form-group">
										<input type="text" name="college_id" tabindex="5" class="form-control" placeholder="College Id" required>
									</div>
									<div class="form-group">
										<input type="text" name="reg_no" tabindex="6" class="form-control" placeholder="Registration Id" required>
									</div>
									<div class="form-group">
										<input type="password" name="pass" tabindex="7" class="form-control" placeholder="Password" required>
									</div>
									<div class="form-group">
										<input type="password" name="confpass" tabindex="8" class="form-control" placeholder="Confirm Password" required>
										<br/>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit" id="register-submit" tabindex="9" class="form-control btn btn-register" value="Register Now">
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