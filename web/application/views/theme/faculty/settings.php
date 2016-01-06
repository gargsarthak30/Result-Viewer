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
								<p class="active">Change Password</p>
								</center>
							</div>
						</div>
						<hr>
					</div>
					<?php echo '<span style="font-size:10px; color:red; text-align:center">'.validation_errors().'</span>'; ?>
					<?php echo '<center>'.$this->session->flashdata('wrong_curr_pass').'</center>'; ?>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action="<?=site_url('faculty/validate_change_pass');?>" method="post" role="form" style="display: block;">
									<div class="form-group">
										<input type="password" name="curr_pass" tabindex="1" class="form-control" placeholder="Current Password" required autofocus>
									</div>
									<div class="form-group">
										<input type="password" name="new_pass" tabindex="2" class="form-control" placeholder="New Password (Atleast 6 characters)" required>
									</div>
									<div class="form-group">
										<input type="password" name="conf_pass" tabindex="3" class="form-control" placeholder="Confirm New Password" required>
									</div>
									<br/>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="" id="" tabindex="4" class="form-control btn btn-login" value="Save Changes">
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
<?php
    $flash = $this->session->flashdata('pass');
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
