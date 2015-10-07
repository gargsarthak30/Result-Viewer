<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {

	public function index()
	{
		$this->load->view('link_view');
		$this->load->view('home_view');
		$this->load->view('footer_view');
	}
}

/* End of file home.php */
/* Location: ./application/controllers/home.php */