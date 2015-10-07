<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Student extends CI_Controller {

	public function index()
	{
		$this->load->view('link_view');
		$this->load->view('student/sign-in_view');
		$this->load->view('footer_view');
	}
	
	public function signup()
	{
		$this->load->view('link_view');
		$this->load->view('student/sign-up_view');
		$this->load->view('footer_view');
	}
	
	public function result()
	{
		$this->load->view('link_view');
		$this->load->view('student/result_view');
		$this->load->view('footer_view');
	}
	public function signup_complete()
	{
		$this->load->view('link_view');
		$this->load->view('student/signup_com');
		$this->load->view('footer_view');
	}
}

