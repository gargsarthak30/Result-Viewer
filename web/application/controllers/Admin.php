<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller {
	
	public function signin()
	{
		$this->load->library('form_validation');
		$this->load->view('theme/common/link');
		$this->load->view('theme/homepage/header');
		$this->load->view('theme/admin/signin');
		$this->load->view('theme/common/footer');
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
			$this->main();
		}
	}

	
	public function main()
	{
		$this->load->view('theme/common/link');
		$this->load->view('theme/admin/header');
		$this->load->view('theme/admin/admin_main');
		$this->load->view('theme/common/footer');
	}
	
	public function sheets()
	{
		$this->load->view('theme/common/link');
		$this->load->view('theme/admin/header');
		$this->load->view('theme/admin/existing_sheets');
		$this->load->view('theme/common/footer');
	}
	
	
	public function excel_submit()
	{
		$this->load->view('theme/admin/excel_submit');
	}
	
	public function admin_register()
	{
		
		$this->load->view('theme/admin/signup_fac');
		
	}
	
	public function faculty_signup()
	{
		
		$this->load->view('theme/admin/faculty');
		
	}
}

