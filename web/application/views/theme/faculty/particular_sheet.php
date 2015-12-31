
<div class="container" id="result">
	<div class="row">
		<br/><br/><br/><br/><br/>		
		<h5>Sheet Id : <?=$sheet_id?></h5>
		<h5><b>Course_Code : </b><?=$status->Course_Code?></h5>
		<h5><b>Semester : </b><?=$status->Semester?></h5>
		<h5><b>School : </b><?=$status->School?></h5>
		<h5><b>Department : </b><?=$status->Department?></h5>
		<h5>
			<b>Published : </b>
			<?php
				if($status->Published==0)
				{
					echo 'No<br>';	
				}
				else if($status->Published==1)
				{
					echo 'Yes<br>';	
				}
			?>
		</h5>
		<br/><br/>
	</div>

		<?php
			if (empty($sheet))
			{
				echo "<center>The sheet is Empty !!</center>";
			}
			else
			{
		?>		
		
		<ul class="nav nav-list col-sm-12" id = "record_list"> 
            <b>
                <li class="list-group-item">
                    <div class="row">
                        <div class="col-md-2 cr">
                            Roll No.
                        </div>
                        <div class="col-md-2 cr">
                            S-M
                        </div>
                        <div class="col-sm-2 cr">
                           M-T
                        </div>
                        <div class="col-sm-2 cr">
                           E-T
                        </div>
                        <div class="col-sm-2 cr">
                           Total
                        </div>
                        <div class="col-sm-2 cr">
                           Grade
                        </div>
                    </div>
                </li>
            </b>
            <?php
            $count=0;
            foreach ($sheet as $rows)
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
                        <div class="col-md-2 cr">
                            <?php echo $rows->Roll_No;; ?>
                        </div>
                        <div class="col-sm-2 cr">
                           <?php echo $rows->S_M; ?>
                        </div>
                        <div class="col-sm-2 cr">
                           <?php echo $rows->M_T; ?>
                        </div>
                        <div class="col-sm-2 cr">
                           <?php echo $rows->E_T; ?>
                        </div>
                        <div class="col-sm-2 cr">
                           <?php echo $rows->Total; ?>
                        </div>
                        <div class="col-sm-2 cr">
                           <?php echo $rows->Grades; ?>
                        </div>
                    </div>
                </li>

                <?php
                    }
                ?>
        </ul>			
						
		<?php
			} 
		?>
</div>
<br>
<br>
				
