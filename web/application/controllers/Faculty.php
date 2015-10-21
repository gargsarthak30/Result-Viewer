<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Faculty extends CI_Controller {
	
	public function signin()
	{
		if($this->session->userdata('logged')=='fac')
		{
			redirect('faculty/upload');
		}
		else
		{
			if($this->session->userdata('logged')=='stu' || $this->session->userdata('logged')=='admin')
			{
				$this->session->sess_destroy();
			}
			$this->load->library('form_validation');
			$this->load->view('theme/common/link');
			$this->load->view('theme/homepage/header');
			$this->load->view('theme/faculty/signin');
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
		$q=$this->db->query("select * from admin where Username='$user'");
		$results=$q->result();
		foreach($results as $row)
		{
			if(password_verify($pass, $row->Password))
			{
					$fac_data = array(
                   'un'  => $user,
				   'logged' => 'fac'
					);

				$this->session->set_userdata($fac_data);
				redirect('faculty/upload');
			}
			else
			{
				echo "wrong credentials try again";
			}

		}
	}

	
	public function upload()
	{
		$this->load->view('theme/common/link');
		$this->load->view('theme/faculty/header');
		$this->load->view('theme/faculty/upload');
		$this->load->view('theme/common/footer');
	}
	
	public function sheets()
	{
		$this->load->view('theme/common/link');
		$this->load->view('theme/faculty/header');
		$this->load->view('theme/faculty/existing_sheets');
		$this->load->view('theme/common/footer');
	}
	
	
	public function excel_submit()
	{
		$this->load->view('theme/faculty/excel_submit');
	}
	
	public function admin_register()
	{
		
		$this->load->view('theme/admin/signup_fac');
		
	}
	
	public function faculty_signup()
	{
		
		$this->load->view('theme/admin/faculty');
		
	}
	
	public function logout()
	{
		$this->session->sess_destroy();
		redirect('home');
	}
}

