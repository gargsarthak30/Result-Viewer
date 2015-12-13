<div class="container" id="result">
	<div class="row">
		<br/><br/><br/><br/><br/>		
		<h4>Registration No. : <?=$reg_no;?></h4>
		<br/><br/>
				
		<?php
			if (empty($stu_res))
			{
				echo "<center>No Results Found !!</center>";
			}
			else
			{
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
					foreach($stu_res as $rows)
					{	
			?>
					
				<tr>
					<td><?php echo $rows->Semester;  ?></td>
					<td><?php echo $rows->Course_Code;  ?></td>
					<td><?php echo $rows->S_M; ?></td>
					<td><?php echo $rows->M_T; ?></td>
					<td><?php echo $rows->E_T; ?></td>
					<td><?php echo $rows->Total; ?></td>
					<td><?php echo $rows->Grades; ?></td>			
				</tr>
						
			<?php
					} 
				}
			?>
			
			</tbody>
		</table>
	</div>
</div>
				
				