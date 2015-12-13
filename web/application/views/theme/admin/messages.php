
<section id="new">
	<br/>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h3 style="margin-top:-20px;">Messages</h3>
                    <hr class="star-primary">
                </div>
            </div>
            <br/>

    <?php
		$msg_q = $this->db->query("SELECT * FROM rs_messages");
    	if ($msg_q->num_rows() > 0)
    	 {
    ?>
        <ul class="nav nav-list col-sm-12" id = "record_list"> 
            <b>
                <li class="list-group-item">
                    <div class="row">
                        <div class="col-md-1">
                            S.No.
                        </div>
                        <div class="col-md-2">
                            Name
                        </div>
						<div class="col-md-3">
                            Email
                        </div>
                        <div class="col-md-6">
                           Message
                        </div>
                    </div>
                </li>
            </b>
            <?php
			$count=0;
            foreach ($msg_q->result() as $row)
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
						<div class="col-md-1">
							<?= $row->Message_Id ?>
                        </div>
						<div class="col-md-2">
							<?= $row->Name ?>
                        </div>
						<div class="col-md-3">
							<?= $row->Email ?>
                        </div>
                        <div class="col-md-6">
                            <?= $row->Message ?>
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
        echo "<b>Nothing to Display, no Messages Found</b>";
    }
    ?>
</div>
</section>