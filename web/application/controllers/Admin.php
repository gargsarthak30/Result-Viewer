<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller {
	
	public function main()
	{
		$this->load->view('theme/homepage/link');
		$this->load->view('theme/admin/header');
		$this->load->view('theme/admin/admin_main');
		$this->excel_submit();
		$this->load->view('theme/admin/existing_sheets');
		$this->load->view('theme/homepage/contact');
		$this->load->view('theme/homepage/footer');
	}
	public function excel_submit()
	{
		$this->load->view('theme/admin/excel_submit');
	}
}

