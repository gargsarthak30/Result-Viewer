<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Student extends CI_Controller {
	
	public function signin()
	{
		$this->load->library('form_validation');
		$this->load->view('theme/common/link');
		$this->load->view('theme/homepage/header');
		$this->load->view('theme/student/signin');
		$this->load->view('theme/common/footer');
	}
	
	public function register()
	{
		$this->load->library('form_validation');
		$this->load->view('theme/common/link');
		$this->load->view('theme/homepage/header');
		$this->load->view('theme/student/register');
		$this->load->view('theme/common/footer');
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
			$this->result();
		}
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
		$this->load->view('theme/student/result_view');
		$this->load->view('theme/common/footer');
	}
	
	public function signup_complete()
	{
		$this->load->view('theme/student/signup_com');
	}
}

