
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
		$select_all = $this->db->query("SELECT Full_Name, Email FROM faculty ORDER BY Faculty_Id DESC;");
    	if ($select_all->num_rows() > 0)
    	 {
    ?>
        <ul class="nav nav-list col-sm-12" id = "record_list"> 
            <b>
                <li class="list-group-item">
                    <div class="row">
                        <div class="col-sm-4">
                            Name
                        </div>
						<div class="col-sm-6">
                            Email
                        </div>
                        <div class="col-sm-2">
                           Action
                        </div>
                    </div>
                </li>
            </b>
            <?php
			$count=0;
            foreach ($select_all->result() as $row)
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
				?>
                <li class="list-group-item list-group-item-<?=$color?>">
                    <div class="row">
						<div class="col-sm-4">
							<?= $row->Full_Name ?>
                        </div>
						<div class="col-sm-6">
							<?= $row->Email ?>
                        </div>
                        <div class="col-sm-1">
                            <a href="<?= site_url('admin/remove'); ?>" class="btn btn-xs btn-primary">Remove</a>
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
	if(empty($this->session->flashdata('conf_add')))
	{

	}
	else
	{
?>
		<script>
		alert(
			"<?php echo $this->session->flashdata('conf_add'); ?>"
	 	);
		</script>
	<?php
	}
	?>
