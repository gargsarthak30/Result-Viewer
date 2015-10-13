<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Student extends CI_Controller {
	
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
		$this->load->view('link_view');
		$this->load->view('theme/student/signup_com');
		$this->load->view('footer_view');
	}
}

