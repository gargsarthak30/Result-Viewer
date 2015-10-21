<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {

	public function index()
	{
		$this->load->view('theme/common/link');
		$this->load->view('theme/homepage/header');
		$this->load->view('theme/homepage/home');
		$this->load->view('theme/homepage/about');
		$this->load->view('theme/common/footer');
	}
	
}

