
    <!-- Home -->
    <header>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <img class="img-responsive" src="<?=base_url('assets/theme/img/Drawing.png');?>" alt="">
                    <div class="intro-text" style="margin-bottom:-50px;">
                        <span class="name">Result Viewer</span>
                        <hr class="star-light">
                        <span class="skills">Paperless - Steadfast - Transparent</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

<?php
$flash = $this->session->flashdata('admin_change');
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

	

		
   




