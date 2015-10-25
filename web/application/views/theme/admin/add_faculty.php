
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
								<p class="active">Add Faculty</p>
								</center>
							</div>
						</div>
						<hr>
					</div>
					<?php echo '<span style="font-size:10px; color:red; text-align:center">'.validation_errors().'</span>'; ?>
					<?php echo '<center>'.$this->session->flashdata('alrdy_add').'</center>'; ?>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="register-form" action="<?=site_url('admin/validate_add_faculty');?>" method="post" role="form">
									<div class="form-group">
										<input type="text" name="full_name" tabindex="1" class="form-control" placeholder="Full Name" value="<?=set_value('full_name');?>" required autofocus>
									</div>
									<div class="form-group">
										<input type="email" name="email" tabindex="2" class="form-control" placeholder="Email" value="<?=set_value('email');?>" required>
									</div>
									<div class="form-group">
										<input type="text" name="username" tabindex="3" class="form-control" placeholder="Choose a unique Username" value="<?=set_value('username');?>" required>
									</div>
									<div class="form-group">
										<input type="password" name="password" tabindex="4" class="form-control" placeholder="Choose Password" required>
									</div>
									<div class="form-group">
										<input type="password" name="confpass" tabindex="5" class="form-control" placeholder="Confirm Password" required>
										<br/>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit" id="register-submit" tabindex="6" class="form-control btn btn-register" value="Add Now">
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