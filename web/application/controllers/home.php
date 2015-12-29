<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {

	public function index()
	{
		if($this->session->userdata('logged')=='admin')
		{
			redirect('admin/all_faculty');
		}
		else if($this->session->userdata('logged')=='faculty')
		{
			redirect('faculty/upload_form');
		}
		else
		{
			$this->load->view('theme/common/link');
			$this->load->view('theme/homepage/header');
			$this->load->view('theme/homepage/home');
			$this->load->view('theme/common/footer');
		}
	}
	
}

