<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Common extends CI_Controller {

	public function about($check)
	{
		$this->load->view('theme/common/link');
		$this->load->view('theme/'.$check.'/header');
		$this->load->view('theme/common/about');
		$this->load->view('theme/common/footer');
	}
	
	public function app($check)
	{
		$this->load->view('theme/common/link');
		$this->load->view('theme/'.$check.'/header');
		$this->load->view('theme/common/app');
		$this->load->view('theme/common/footer');
	}
	
	public function contact($check)
	{
		$this->load->view('theme/common/link');
		$this->load->view('theme/'.$check.'/header');
		$this->load->view('theme/common/contact');
		$this->load->view('theme/common/footer');
	}
	
}

