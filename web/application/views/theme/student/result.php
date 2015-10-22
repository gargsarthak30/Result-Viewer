<?php
$reg_no = $this->session->userdata('roll');
$coll_id = $this->session->userdata('coll');
?>
				<div class="container" id="result">
				<div class="row" style="padding-bottom:205px;">
				<br/><br/><br/><br/><br/>
				
				<h4>College Id : <?=$coll_id;?></h4>
				<h4>Registration No. : <?=$reg_no;?></h4>
				<br/><br/>
				
				<?php
				$q=$this->db->query("Select * from $coll_id where Roll_No = '$reg_no' ORDER BY Semester DESC");
					if($q->num_rows() == 0)
					{
						echo "<center>No Results Found !!</center>";
					}
					else
					{
						$results=$q->result();
							$y="S-M";
							$y1="M-T";
							$y2="E-T";
							$y3= "Total";
							$y4= "Grades";
				?>
				
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
						
					<?php
							} 
						}
					?>
				</table>
				</div>
				</div>
				
				