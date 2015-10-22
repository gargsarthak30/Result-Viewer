<?php

	$username=$_POST["username"];
	$pass=$_POST["pass"];

$q=$this->db->query("select * from admin where Username='$username'");
$results=$q->result();
foreach($results as $row)
		{
			if(password_verify($pass, $row->Password))
			{
				?>
				<div style="text-align: center; margin-left: 500px; margin-right: 500px; padding-top: 100px;">
				<div style="background-color:white; border: 5px solid orange; ">
				<h2>Faculty sign-up</h2>
				<br/>
				<form action = "<?=base_url('index.php/faculty/faculty_signup')?>" method="POST">
				Name: <input type="text" name="name">
				<br/><br/>
				Username: <input type="text" name="username">
				<br/><br/>
				Password: <input type="password" name="pass">
				<br/><br/>
				E-mail: <input type="text" name="email">
				<br/><br/><br/>
				<input type="submit" value="Submit" name="faculty">
				</form>
				<br/><br/>
				</div>
				</div>
			<?php
			}
			else
			{
				echo "Wrong credentials";
				
				
			}
		}
				
	
	
	
	



?>