
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
				
		<?php
			if (empty($sheet))
			{
				echo "<center>The sheet is Empty !!</center>";
			}
			else
			{
		?>		
		
		<table class="table">
			<thead>
				<tr border="1">
					<th>Roll No.</th>
					<th>S-M</th>
					<th>M-T</th>
					<th>E-T</th>
					<th>Total</th>
					<th>Grade</th>
				</tr>
			</thead>
			<tbody>
						
			<?php
					foreach($sheet as $rows)
					{	
			?>
					
				<tr>
					<td><?php echo $rows->Roll_No;  ?></td>
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
				
