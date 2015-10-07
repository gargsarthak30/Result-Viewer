
<div style="margin-left: 500px; margin-right: 500px; padding-top: 100px;">
	<div style="padding-left: 40px; background-color:white; border: 5px solid orange; ">
		<h2 align="center">Sign-In</h2>
		<br/>
		<form action = "<?=site_url('student/result')?>" method="POST">
			College Id: <input style="margin-left: 40px;" type="text" name="">
			<br/><br/>
			Registration No.: <input style="padding-left: 10px;" type="text" name="">
			<br/><br/>
			Password: <input style="margin-left: 40px;" type="password" name="">
			<br/><br/><br/>
		<center>	<input type="submit" value="Login">
		</form>
		<br/><br/><br/>
		<a href="<?=site_url('student/signup');?>">Sign-Up Here</a></center>
		<br/>
		<br/>
	</div>
</div>