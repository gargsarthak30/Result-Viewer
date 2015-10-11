<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller {

	public function index()
	{
		$this->load->view('link_view');
		$this->load->view('admin/sign-in_view');
		$this->load->view('footer_view');
	}
	
	public function main()
	{
		$this->load->view('link_view');
		$this->load->view('admin/admin_main');
		$this->load->view('footer_view');
	}
	public function excel_submit()
	{
		$this->load->view('link_view');
		$this->load->view('admin/excel_submit');
		$this->load->view('footer_view');
	}
}

