
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
				<div class="container" id="result">
				<div class="row" style="padding-bottom:205px;">
				<br/><br/><br/><br/><br/>
				
				<h4>College Id : <?php echo $row->College_Id; ?></h4>
				<h4>Registration No. : <?php echo $row->Roll_No; ?></h4>
				<br/><br/>
				
				<table class="table">
						<thead>
						  <tr>
							
							<th>Semester</th>
							<th>Course code</th>
							<th>S-M</th>
							<th>M-T</th>
							<th>E-T</th>
							<th>Total</th>
							<th>Grades</th>
						  </tr>
						</thead>
						<tbody>
						<?php
						  
					
						$q=$this->db->query("Select * from $coll_id where Roll_No = '$reg_no' ORDER BY Semester DESC");
                        $results=$q->result();
							$y="S-M";
							$y1="M-T";
							$y2="E-T";
							$y3= "Total";
							$y4= "Grades";
						foreach($results as $rows)
						{
							
				
				?>
						  <tr>
							
							<td><?php echo $rows->Semester;  ?></td>
							<td><?php echo $rows->Course_Code;  ?></td>
							<td><?php echo $rows->$y; ?></td>
							<td><?php echo $rows->$y1; ?></td>
							<td><?php echo $rows->$y2; ?></td>
							<td><?php echo $rows->$y3; ?></td>
							<td><?php echo $rows->$y4; ?></td>
							
						  </tr>
						</tbody>
						
						<?php } ?>
				</table>
				</div>
				</div>
				<?php
							}
			else
			{
				echo "nothing";
			}
		}





?>
				