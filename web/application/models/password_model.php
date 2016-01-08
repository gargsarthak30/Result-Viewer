<?php
class Password_model extends CI_Model {

	public function __construct()
	{
		$this->load->database();
	}
	
	public function verify($username)
	{
		$q = $this->db->query("select * from rs_faculty where Username = '$username'");
        if($q->num_rows() == 0) 
        {
            return FALSE;
        }
        else if($q->num_rows() == 1)
        {
        	return TRUE;
        }
  
	}

	public function update_pass_link($username, $pass_link)
	{
		$q = $this->db->query("UPDATE rs_faculty SET pass_link = '$pass_link' WHERE Username = '$username'");
        if($this->db->affected_rows() == 0) 
        {
            return FALSE;
        }
        else if($this->db->affected_rows() == 1)
        {
        	return TRUE;
        }
  
	}

	public function get_email_add($username)
	{
		$q = $this->db->query("SELECT Email FROM rs_faculty WHERE Username = '$username'");
		return $q;
	}

	public function verify_pass_link($username, $pass_link)
	{
		$q = $this->db->query("SELECT * FROM rs_faculty WHERE Username = '$username' && Pass_Link = '$pass_link'");
		if($q->num_rows() == 0) 
        {
            return 0;
        }
        else if($q->num_rows() == 1)
        {
        	return 1;
        }
	}

	public function reset_pass($username)
	{
		$new = html_escape($_POST["new_pass"]);
		$pass = password_hash($new,PASSWORD_DEFAULT);
		$this->db->query("UPDATE rs_faculty SET Password =".$this->db->escape($pass)." WHERE Username = '$username'");			
			
			if($this->db->affected_rows()==1)
			{
				$action = "Reset Password";
				$this->logs_model->insert($action);
				$status = 1;       
			}
			else
			{
				$status = 0;
			}
	}

}
