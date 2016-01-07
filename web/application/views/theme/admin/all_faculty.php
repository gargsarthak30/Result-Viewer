
<section id="new">
	<br/>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h3 style="margin-top:-20px;">All Faculty</h3>
                    <hr class="star-primary">
                </div>
            </div>
            <br/>

    <?php
    	if ($all_fac->num_rows() > 0)
    	 {
    ?>
        <ul class="nav nav-list col-sm-12" id = "record_list"> 
            <b>
                <li class="list-group-item">
                    <div class="row">
                        <div class="col-sm-3">
                            Name
                        </div>
                        <div class="col-sm-3">
                            Username
                        </div>
						<div class="col-sm-4">
                            Email
                        </div>
                        <div class="col-sm-2 text-center">
                           Action
                        </div>
                    </div>
                </li>
            </b>
            <?php
			$count=0;
            foreach ($all_fac->result() as $row)
             {
				$count++;
				if($count%2==0)
				{
					$color='default';
				}
				else
				{
					$color='primary';
				}
                if($row->Approved == 0)
                {
                    $shade ='danger';
                    $disable = '';
                }
                else
                {
                    $shade ='success';
                    $disable = 'disabled';
                }
				?>
                <li class="list-group-item list-group-item-<?=$color?>">
                    <div class="row">
						<div class="col-sm-3">
							<?= $row->Full_Name ?>
                        </div>
                        <div class="col-sm-3">
                            <?= $row->Username ?>
                        </div>
						<div class="col-sm-4">
							<?= $row->Email ?>
                        </div>
                        <div class="col-sm-2">
                            <a href="<?= site_url('admin/remove_faculty').'/'.$row->Faculty_Id?>" style="width:60px;" class="btn btn-xs btn-primary">Remove</a>&nbsp;&nbsp;&nbsp;
                            <a href="<?= site_url('admin/approve_faculty').'/'.$row->Faculty_Id?>" style="width:60px;" class="btn btn-xs btn-<?=$shade?> <?=$disable?>" >Approve</a>
                        </div>
                    </div>
                </li>

                <?php
            }
            ?>
        </ul>
        <?php
    }
    else 
    {
        echo "<b>Nothing to Display, no Faculty Found</b>";
    }
    ?>
</div>
</section>

<?php
$flash = $this->session->flashdata('fac_remove').$this->session->flashdata('fac_approve').$this->session->flashdata('conf_add') ;
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