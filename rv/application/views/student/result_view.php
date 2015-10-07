
<?php
$coll_id=$_POST["college_id"];
$reg_no=$_POST["reg_no"];
$pass=$_POST["pass"];

$q=$this->db->query("select * from users where College_Id='$coll_id' and RegistrationNumber='$reg_no'");
$results=$q->result();
foreach($results as $row)
		{
			if(password_verify($pass, $row->Password))
			{?>
				
				<div class="container">
				<div class="row">
				<div class="col-md-9">
				<h3>Registration No. : <?php echo $row->RegistrationNumber; ?></h3>
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
							<th>Subject</th>
							<th>Score</th>
						  </tr>
						</thead>
						<tbody>
						<?php
						  
					
						$q=$this->db->query("Select * from $coll_id where RegistrationNumber = '$reg_no'");
                        $results=$q->result();
									
						foreach($results as $rows)
						{
							
				
				?>
						  <tr>
							
							<td><?php echo $rows->Semester;  ?></td>
							<td><?php echo $rows->Subject;  ?></td>
							<td><?php echo $rows->Score; ?></td>
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
				