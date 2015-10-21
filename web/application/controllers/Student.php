<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Student extends CI_Controller {
	
	public function signin()
	{
		if($this->session->userdata('logged')=='stu')
		{
			redirect('student/result');
		}
		else
		{
			if($this->session->userdata('logged')=='fac' || $this->session->userdata('logged')=='admin')
			{
				$this->session->sess_destroy();
			}
			$this->load->library('form_validation');
			$this->load->view('theme/common/link');
			$this->load->view('theme/homepage/header');
			$this->load->view('theme/student/signin');
			$this->load->view('theme/common/footer');
		}
	}
	
	public function validate_signin()
	{
		$this->load->library('form_validation');
		
		$this->form_validation->set_rules('college_id', 'College Id', 'required');
		$this->form_validation->set_rules('reg_no', 'Registeration Number', 'required');
		$this->form_validation->set_rules('pass', 'Password', 'required|min_length[6]');
		$this->form_validation->set_message('min_length', '* Details incorrect !!');
		
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
		$coll_id=$_POST["college_id"];
		$reg_no=$_POST["reg_no"];
		$pass=$_POST["pass"];
		$q=$this->db->query("select * from users where College_Id='$coll_id' and Roll_No='$reg_no'");
		$results=$q->result();
		foreach($results as $row)
		{
			if(password_verify($pass, $row->Password))
			{
					$stu_data = array(
                   'roll'  => $reg_no,
                   'coll'  => $coll_id,
				   'logged' => 'stu'
					);

				$this->session->set_userdata($stu_data);
				redirect('student/result');
			}
			else
			{
				echo "wrong credentials try again";
			}
		}
	}
	
	public function register()
	{
		$this->load->library('form_validation');
		$this->load->view('theme/common/link');
		$this->load->view('theme/homepage/header');
		$this->load->view('theme/student/register');
		$this->load->view('theme/common/footer');
	}
	
	public function validate_register()
	{
		$this->load->library('form_validation');
		
		$this->form_validation->set_rules('college_id', 'College Id', 'required');
		$this->form_validation->set_rules('reg_no', 'Registeration Number', 'required');
		$this->form_validation->set_rules('pass', 'Password', 'required|min_length[6]');
		$this->form_validation->set_rules('confpass', 'Confirm Password', 'required|matches[pass]');
		
		if ($this->form_validation->run() == FALSE)
		{
			$this->register();
		}
		else
		{
			$this->signup_complete();
		}
	}
	
	public function result()
	{
		
		$this->load->view('theme/common/link');
		$this->load->view('theme/student/header');
		$this->load->view('theme/student/result');
		$this->load->view('theme/common/footer');
	}
	
	public function signup_complete()
	{
		$this->load->view('theme/student/signup_com');
	}
	
	public function logout()
	{
		$this->session->sess_destroy();
		redirect('home');
	}
}

