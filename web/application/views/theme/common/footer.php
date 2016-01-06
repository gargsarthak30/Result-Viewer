</div><!--opened after header-->

<style>
#foot_about
{
    text-decoration:none;
    cursor:pointer; 
    color:white;
}
#foot_about:hover
{
    color:#18BC9C;
}
</style>

    <!-- Footer -->
    <footer class="text-center">
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        Copyright &copy; 2015-<?php echo date("Y")?> &nbsp;Gautam Buddha University<br>
						<a id = "foot_about" data-toggle="modal" data-target="#about">Developers</a>
                    </div>
					
                </div>
            </div>
        </div>
    </footer>
	
	
    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top page-scroll visible-xs visible-sm">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>

	
	    <!-- jQuery -->
    <script src="<?=base_url('assets/theme/js/jquery.js');?>"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<?=base_url('assets/theme/js/bootstrap.min.js');?>"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="<?=base_url('assets/theme/js/classie.js');?>"></script>
    
    <!-- Custom Theme JavaScript -->
    <script src="<?=base_url('assets/theme/js/freelancer.js');?>"></script>

    <!--Bootstrap Select Picker-->
    <script src="<?=base_url('assets/select-picker/js/bootstrap-select.min.js');?>"></script>    

    <!-- Modal for OpenGBU -->
<div class="modal fade" id="about" style="padding-top:30px;" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">About - Result Viewer</h4>
      </div>
      <div class="modal-body" style="text-align: center">
                    <!--<b>Mentored By:</b><br/>Sir Arun Solanki &nbsp; | &nbsp; Sir Amit K. Awasthi<br/><br/>-->
                    <b>Android App By:</b><br/>Sarthak Garg<br/><br/>
                    <b>Web Service By:</b><br/>Bhawesh Chandola &nbsp; | &nbsp; Rajat Saxena<br/><br/>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
</body>

</html>
