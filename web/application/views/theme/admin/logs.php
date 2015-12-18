
<section id="new">
	<br/>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h3 style="margin-top:-20px;">All Logs</h3>
                    <hr class="star-primary">
                </div>
            </div>
            <br/>

    <?php
    	if ($logs->num_rows() > 0)
    	 {
    ?>
        <ul class="nav nav-list col-sm-12" id = "record_list"> 
            <b>
                <li class="list-group-item">
                    <div class="row">
                        <div class="col-sm-2">
                            Date &nbsp;&&nbsp; Time
                        </div>
                        <div class="col-sm-2">
                           Username
                        </div>
                        <div class="col-sm-1">
                           Level
                        </div>
                        <div class="col-sm-3">
                           Action
                        </div>
                        <div class="col-sm-1">
                           IP Address
                        </div>
                        <div class="col-sm-3">
                           System
                        </div>
                    </div>
                </li>
            </b>
            <?php
			$count=0;
            foreach ($logs->result() as $row)
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
                        <div class="col-sm-2">
                            <?=$row->date?>
                            <br/>
                            <?=$row->time?>
                        </div>
                        <div class="col-sm-2">
                           <?=$row->user_name?>
                        </div>
                        <div class="col-sm-1">
                           <?=$row->level?>
                        </div>
                        <div class="col-sm-3">
                           <?=$row->action?>
                        </div>
                        <div class="col-sm-1">
                           <?=$row->ip_address?>
                        </div>
                        <div class="col-sm-3">
                           <?=$row->user_agent?>
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
        echo "<b>Nothing to Display, no Logs Found</b>";
    }
    ?>
</div>
</section>