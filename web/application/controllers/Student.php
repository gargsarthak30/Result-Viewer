<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Student extends CI_Controller {
	
	public function validate_sigin()
	{
		$this->load->library('form_validation');
		
		$this->form_validation->set_rules('college_id', 'Username', 'required');
		$this->form_validation->set_rules('reg_no', 'Registeration Number', 'required');
		$this->form_validation->set_rules('pass', 'Password', 'required|min_length[6]');
		
		if ($this->form_validation->run() == FALSE)
		{
			 redirect(''.'#student', 'location');
		}
		else
		{
			$this->result();
		}
	}
	
	public function result()
	{
		
		$this->load->view('theme/homepage/link');
		$this->load->view('theme/student/header');
		$this->load->view('theme/student/result_view');
		$this->load->view('theme/homepage/app');
		$this->load->view('theme/homepage/contact');
		$this->load->view('theme/homepage/footer');
	}
	public function signup_complete()
	{
		$this->load->view('theme/student/signup_com');
	}
}

