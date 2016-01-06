<?php
class Admin_model extends CI_Model {

	public function __construct()
	{
		$this->load->database();
	}
	
	public function admin_verify()
	{
		$user=$_POST["username"];
		$pass=$_POST["password"];
		$q=$this->db->query("select * from rs_admin where Username='$user' AND Flag = 1");
		if( $q->num_rows() == 0 )
		{
			return 0;
		}
		else if( $q->num_rows() > 1 )
		{
			return 1;
		}
		else
		{
			$row=$q->row();
			if(password_verify($pass, $row->Password))
			{
					$admin_data = array(
                   'user_name'  => $user,
				   'logged' => 'admin'
					);

					$this->session->set_userdata($admin_data);
					return 2;
			}
			else
			{
					return 0;
			}
		}
	}

	public function all_fac()
	{
		$select_all = $this->db->query("SELECT Faculty_Id, Full_Name, Username, Email FROM rs_faculty ORDER BY Faculty_Id DESC;");
		return $select_all;
	}

	public function add_faculty()
	{
		$full_name = html_escape($_POST["full_name"]);
		$email = html_escape($_POST["email"]);
		$username = html_escape($_POST["username"]);
		$password = html_escape($_POST["password"]);
		
		$query=$this->db->query("select * from rs_faculty where Username='$username'");
		$res=$query->result();
		if($this->db->affected_rows()>0)
		{
			$this->session->set_flashdata('alrdy_add', '* This username is already in use.<br/>Please choose another username !!');
			return 0;
		}
		else
		{
			$pass = password_hash($password,PASSWORD_DEFAULT);
			$q=$this->db->query("INSERT INTO rs_faculty (Full_Name,Username,Password,Email)VALUES(".$this->db->escape($full_name).",".$this->db->escape($username).",".$this->db->escape($pass).",".$this->db->escape($email).");");
			if($this->db->affected_rows()==1)
			{
				$action = "Added Faculty - ".$full_name;
				$this->logs_model->insert($action);
				$this->session->set_flashdata('conf_add', 'The FACULTY is successfully ADDED !!');
				return 1;

			}
		}
	}

	public function del_fac()
	{	
		$faculty_id = $this->input->post('fid');
		$fac_name = $this->db->query("SELECT Full_Name FROM rs_faculty WHERE Faculty_Id = '$faculty_id';")->row()->Full_Name;
		$this->db->query("DELETE FROM rs_faculty WHERE Faculty_Id = '$faculty_id';");
		if($this->db->affected_rows()==1)
		{
			$action = "Removed Faculty - ".$fac_name;
			$this->logs_model->insert($action);
			$this->session->set_flashdata('fac_remove', 'The FACULTY has been REMOVED !!');
		}
		else
		{
			$this->session->set_flashdata('fac_remove', 'There was some error !!'.'\n'.'Please try again.');
		}
	}

	public function change_admin()
	{
		$full_name = html_escape($_POST["full_name"]);
		$email = html_escape($_POST["email"]);
		$username = html_escape($_POST["username"]);
		$password = html_escape($_POST["password"]);
			
		$query=$this->db->query("select * from rs_admin where Username='$username'");
		$res=$query->result();
		if($this->db->affected_rows()>0)
		{
			$this->session->set_flashdata('alrdy_add', '* This username is already in use.<br/>Please choose another username !!');
			return 0;
		}
		else
		{
			$pass = password_hash($password,PASSWORD_DEFAULT);
			$q=$this->db->query("INSERT INTO rs_admin (Full_Name,Username,Password,Email,Flag)VALUES(".$this->db->escape($full_name).",".$this->db->escape($username).",".$this->db->escape($pass).",".$this->db->escape($email).",1);");
			if($this->db->affected_rows()==1)
			{
				$username_del = $this->session->userdata('user_name');
				$this->db->query("DELETE FROM rs_admin WHERE Username = '$username_del';");
				if($this->db->affected_rows()==1)
				{
					$action = "<b>Removed himself as Admin.</b><br>Automatically Logged-Out.<br/><b>The new Admin is ".$full_name."</b>";
					$this->logs_model->insert($action);
					$this->session->sess_destroy();				
					$this->session->set_flashdata('admin_change', 'The ADMIN is successfully CHANGED !!');
					return 1;
				}
			}
		}
	}

	public function change_pass($fac_id)
	{
		$curr = $_POST["curr_pass"];
		$new = html_escape($_POST["new_pass"]);

		$un = $this->session->userdata('user_name');
		$orig = $this->db->query("SELECT Password FROM rs_admin WHERE Username = '$un'");

		if(password_verify($curr, $orig->row()->Password))
		{
			$pass = password_hash($new,PASSWORD_DEFAULT);
			$this->db->query("UPDATE rs_admin SET Password =".$this->db->escape($pass)." WHERE Username = '$un'");			
			
			if($this->db->affected_rows()>0)
			{
				$action = "Changed Password";
				$this->logs_model->insert($action);
				$status = 1;       
			}
			else
			{
				$status = 0;
			}
		}
		else
		{
			$status = -1;
		}
		return $status;	
	}

}