<?php

$name=$_POST["name"];
$username=$_POST["username"];
$pass=$_POST["pass"];
$email=$_POST["email"];


$query=$this->db->query("select * from admin where Name='$name' and Username='$username' ");
$res=$query->result();
if($this->db->affected_rows()>0)
{
	echo "Faculty already signed up";
	
	
}
else
{

$password = password_hash($pass,PASSWORD_DEFAULT);
$q=$this->db->query("INSERT INTO admin (Name,Username,Password,Email)VALUES('$name','$username','$password','$email');");

if($this->db->affected_rows()>0)
{
	echo "Succesfully registered.";
	
	
}
else{
	
	echo "some error occured try again later";
}
}
	





?>