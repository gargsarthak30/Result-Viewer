<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Common extends CI_Controller {

	public function app()
	{
		$check = empty($this->session->userdata('logged'))?'homepage':$this->session->userdata('logged');
		$this->load->view('theme/common/link');
		$this->load->view('theme/'.$check.'/header');
		$this->load->view('theme/common/app');
		$this->load->view('theme/common/footer');
	}
	
	public function contact()
	{
		if($this->session->userdata('logged')=='admin')
		{
			redirect('contact/view_messages');
		}
		else
		{
			if($this->session->userdata('logged')=='faculty')
			{
				$check = 'faculty';	
			}
			else
			{
				$check = 'homepage';	
			}
			$this->load->view('theme/common/link');
			$this->load->view('theme/'.$check.'/header');
			$this->load->view('theme/common/contact');
			$this->load->view('theme/common/footer');
		}
	}

	public function open_source()
	{
		$check = empty($this->session->userdata('logged'))?'homepage':$this->session->userdata('logged');
		$this->load->view('theme/common/link');
		$this->load->view('theme/'.$check.'/header');
		$this->load->view('theme/common/open_source');
		$this->load->view('theme/common/footer');
	}

}