<html>
	<body>
		Dear <?=$username?>,
		<br>
		<br>
		Your password reset link is <?=site_url('password/reset').'/'.$username.'/'.$pass_link;?>
		<br>
		This link can only be used once.
		<br>
		For any help contact : support@resultviewer.esy.es 
		<br>
		<br>
		Thank You
		<br>
		GBU-Result
	</body>
</html>
