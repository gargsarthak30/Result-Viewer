<div class="container" id="result">
	<div class="row">
		<br/><br/><br/><br/><br/>		
		<h4>Registration No. : <?=$reg_no;?></h4>
		<br/><br/>
	</div>
		<?php
			if (empty($stu_res))
			{
				echo "<center>No Results Found !!</center>";
			}
			else
			{
		?>	
		<ul class="nav nav-list col-sm-12" id = "record_list"> 
            <b>
                <li class="list-group-item">
                    <div class="row">
                        <div class="col-md-2 cr">
                            Semester
                        </div>
                        <div class="col-md-3 cr">
                            Course code
                        </div>
                        <div class="col-sm-1 cr">
                           S-M
                        </div>
                        <div class="col-sm-1 cr">
                           M-T
                        </div>
                        <div class="col-sm-1 cr">
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
            foreach ($stu_res as $rows)
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
                            <?php echo $rows->Semester; ?>
                        </div>
                        <div class="col-md-3 cr">
                            <?php echo $rows->Course_Code;  ?>
                        </div>
                        <div class="col-sm-1 cr">
                           <?php echo $rows->S_M; ?>
                        </div>
                        <div class="col-sm-1 cr">
                           <?php echo $rows->M_T; ?>
                        </div>
                        <div class="col-sm-1 cr">
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
				
				