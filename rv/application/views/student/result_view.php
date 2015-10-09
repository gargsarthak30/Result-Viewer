
<?php
$coll_id=$_POST["college_id"];
$reg_no=$_POST["reg_no"];
$pass=$_POST["pass"];

$q=$this->db->query("select * from users where College_Id='$coll_id' and Roll_No='$reg_no'");
$results=$q->result();
foreach($results as $row)
		{
			if(password_verify($pass, $row->Password))
			{?>
				
				<div class="container">
				<div class="row">
				<div class="col-md-9">
				<h3>Registration No. : <?php echo $row->Roll_No; ?></h3>
				<h3>College Id : <?php echo $row->College_Id; ?></h3>
				</div>
				<div class="col-md-3">
				<a style="margin-top:10px;" type="button" class="btn btn-sm btn-primary" href="<?=site_url('');?>">Log-Out</a>
				</div>

				<hr/>
				
				
				<table class="table">
						<thead>
						  <tr>
							
							<th>Semester</th>
							<th>Course code</th>
							<th>S-M</th>
							<th>M-T</th>
							<th>E-T</th>
						  </tr>
						</thead>
						<tbody>
						<?php
						  
					
						$q=$this->db->query("Select * from $coll_id where Roll_No = '$reg_no'");
                        $results=$q->result();
							$y="S-M";
							$y1="M-T";
							$y2="E-T";
						foreach($results as $rows)
						{
							
				
				?>
						  <tr>
							
							<td><?php echo $rows->Semester;  ?></td>
							<td><?php echo $rows->Course_Code;  ?></td>
							<td><?php echo $rows->$y; ?></td>
							<td><?php echo $rows->$y1; ?></td>
							<td><?php echo $rows->$y2; ?></td>
							
						  </tr>
						</tbody>
						<?php } ?>
				</table>

				</div>
				<?php
							}
			else
			{
				echo "nothing";
			}
		}





?>
				