<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller {
	
	public function signin()
	{
		if($this->session->userdata('logged')=='admin')
		{
			redirect('admin/all');
		}
		else
		{
			if($this->session->userdata('logged')=='student' || $this->session->userdata('logged')=='faculty')
			{
				$this->session->sess_destroy();
			}
			$this->load->library('form_validation');
			$this->load->view('theme/common/link');
			$this->load->view('theme/homepage/header');
			$this->load->view('theme/admin/signin');
			$this->load->view('theme/common/footer');
		}
		
	}
	
	public function validate_signin()
	{	
		$this->load->library('form_validation');
		
		$this->form_validation->set_rules('username', 'Username', 'required');
		$this->form_validation->set_rules('password', 'Password', 'required');
		
		if ($this->form_validation->run() == FALSE)
		{
			$this->signin();
		}
		else
		{
			$this->verify_signin();
		}
	}
	
	public function verify_signin()
	{
		$user=$_POST["username"];
		$pass=$_POST["password"];
		$q=$this->db->query("select * from admin where Username='$user' AND Flag = 1");
		if( $q->num_rows() == 0 )
		{
			$this->session->set_flashdata('no_rec', '* Details incorrect !!');
			redirect('admin/signin');
		}
		else if( $q->num_rows() > 1 )
		{
			echo "Error : Multiple students found !!";
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
					redirect('admin/all');
			}
			else
			{
					$this->session->set_flashdata('no_rec', '* Details incorrect !!');
					redirect('admin/signin');
			}
		}
	}

	public function add()
	{
		$this->load->library('form_validation');
		$this->load->view('theme/common/link');
		$this->load->view('theme/admin/header');
		$this->load->view('theme/admin/add');
		$this->load->view('theme/common/footer');
	}

	public function validate_add()
	{
		$this->load->library('form_validation');
		
		$this->form_validation->set_rules('full_name', 'Full Name', 'required');
		$this->form_validation->set_rules('email', 'Email', 'required');
		$this->form_validation->set_rules('username', 'Username', 'required|min_length[4]');
		$this->form_validation->set_rules('password', 'Password', 'required');
		$this->form_validation->set_rules('confpass', 'Confirm Password', 'required|matches[password]');
		
		if ($this->form_validation->run() == FALSE)
		{
			$this->add();
		}
		else
		{
			$this->verify_add();
		}

	}

	public function verify_add()
	{
		$full_name=$_POST["full_name"];
		$email=$_POST["email"];
		$username=$_POST["username"];
		$password=$_POST["password"];
		

		$query=$this->db->query("select * from faculty where Username='$username'");
		$res=$query->result();
		if($this->db->affected_rows()>0)
		{
			$this->session->set_flashdata('alrdy_add', '* This username is already in use.<br/>Please choose another username !!');
			redirect('admin/add');
		}
		else
		{
			$pass = password_hash($password,PASSWORD_DEFAULT);
			$q=$this->db->query("INSERT INTO faculty (Full_Name,Username,Password,Email)VALUES('$full_name','$username','$pass','$email');");
			if($this->db->affected_rows()==1)
			{
				$this->session->set_flashdata('conf_add', 'The FACULTY is successfully ADDED !!');
				redirect('admin/all');

			}
		}
	}


	public function all()
	{
		$this->load->view('theme/common/link');
		$this->load->view('theme/admin/header');
		$this->load->view('theme/admin/all');
		$this->load->view('theme/common/footer');
	}

	public function transfer()
	{
		$this->load->view('theme/common/link');
		$this->load->view('theme/admin/header');
		$this->load->view('theme/admin/transfer');
		$this->load->view('theme/common/footer');
	}
	
	public function logout()
	{
		$this->session->sess_destroy();
		redirect('home');
	}
}

