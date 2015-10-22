
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
								<p class="active">Student Login</p>
								</center>
							</div>
						</div>
						<hr>
					</div>
					<?php echo '<center>'.validation_errors().'</center>'; ?>
					<?php echo '<center>'.$this->session->flashdata('no_rec').'</center>'; ?>
					<?php echo '<center>'.$this->session->flashdata('conf_reg').'</center>'; ?>
					<div class="panel-body">
						
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action = "<?=site_url('student/validate_signin');?>" method="post" role="form">
									
									<div class="form-group">
										<input type="text" name="college_id" tabindex="1" class="form-control" placeholder="College Id" value="<?=set_value('college_id');?>" required autofocus>
									</div>
									<div class="form-group">
										<input type="text" name="reg_no" tabindex="2" class="form-control" placeholder="Registration No." value="<?=set_value('reg_no');?>" required>
									</div>
									<div class="form-group">
										<input type="password" name="pass" tabindex="3" class="form-control" placeholder="Password" value="<?=set_value('pass');?>" required>
										<br/>
									</div>									
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Log In">
												<br/><br/>
												<center>
												New Student ? <a href="<?=site_url('student/register');?>" tabindex="5">Register Here</a>
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
					
			