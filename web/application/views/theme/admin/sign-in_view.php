
<div style="text-align: center; margin-left: 500px; margin-right: 500px; padding-top: 100px;">
	<div style="background-color:white; border: 5px solid orange; ">
		<h2>Admin Sign in to register a faculty</h2>
		<br/>
		<form action = "<?=base_url('index.php/admin/admin_register')?>" method="POST">
			Username: <input type="text" name="username">
			<br/><br/>
			Password: <input type="password" name="pass">
			<br/><br/><br/>
			<input type="submit" value="Submit" name="admin">
		</form>
		<br/><br/>
		
	</div>
</div>



