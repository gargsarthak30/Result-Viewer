<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Faculty extends CI_Controller {
	
	public function signin()
	{
		if($this->session->userdata('logged')=='faculty')
		{
			redirect('faculty/upload');
		}
		else
		{
			if($this->session->userdata('logged')=='student' || $this->session->userdata('logged')=='admin')
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
		$q=$this->db->query("select * from faculty where Username='$user'");
		if( $q->num_rows() == 0 )
		{
			$this->session->set_flashdata('no_rec', '* Details incorrect !!');
			redirect('faculty/signin');
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
					$fac_data = array(
                   'user_name'  => $user,
				   'logged' => 'faculty'
					);

					$this->session->set_userdata($fac_data);
					redirect('faculty/upload');
			}
			else
			{
					$this->session->set_flashdata('no_rec', '* Details incorrect !!');
					redirect('faculty/signin');
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
		
		$this->load->view('theme/faculty/signup_fac');
		
	}
	
	public function faculty_signup()
	{
		
		$this->load->view('theme/faculty/faculty');
		
	}
	
	public function logout()
	{
		$this->session->sess_destroy();
		redirect('home');
	}
}

