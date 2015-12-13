
	<link href = "<?=base_url('assets/signin/signin.css')?>" rel="stylesheet">
	<script src="<?=base_url('assets/jquery-2.1.4.min.js')?>" type="text/javascript"></script>
	<script src="<?=base_url('assets/signin/signin.js')?>" type="text/javascript"></script>
<br/><br/>

<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-12">
								<center>
								<p class="active">SEARCH</p>
								</center>
							</div>
						</div>
						<hr>
					</div>
					<?php echo '<span style="font-size:10px; color:red; text-align:center">'.validation_errors().'</span>'; ?>
					<?php echo '<center>'.$this->session->flashdata('no_rec').'</center>'; ?>
					<?php echo '<center>'.$this->session->flashdata('conf_reg').'</center>'; ?>
					<div class="panel-body">
						
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action = "<?=site_url('admin/search_result');?>" method="post" role="form">
									
									<div class="form-group">
										<input type="text" name="roll" tabindex="2" class="form-control" pattern="[1-9]{2}/[A-Z]{3}/[0-9]{3}" title=" 13/ICS/047 " placeholder="Registration No.">
									</div>
																		
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="search" id="search" tabindex="4" class="form-control btn btn-login" value="SEARCH">
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