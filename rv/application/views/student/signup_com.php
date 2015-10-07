<?php

$coll_id=$_POST["college_id"];
$reg_no=$_POST["reg_no"];
$pass=$_POST["pass"];

$query=$this->db->query("select * from users where RegistrationNumber='$reg_no'");
$res=$query->result();
if($this->db->affected_rows()>0)
{
	echo "user already signed up";
	
	
}
else
{

$password = password_hash($pass,PASSWORD_DEFAULT);
$q=$this->db->query("INSERT INTO users (College_Id,RegistrationNumber,Password)VALUES('$coll_id','$reg_no','$password');");

if($this->db->affected_rows()>0)
{
	echo "Succesfully registered.";
	
	
}
}
	





?>