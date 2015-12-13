<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Student extends CI_Controller {
	
	public function details()
	{
			$this->load->library('form_validation');
			$this->load->view('theme/common/link');
			$this->load->view('theme/homepage/header');
			$this->load->view('theme/student/signin');
			$this->load->view('theme/common/footer');
	}
	
	public function result()
	{
			$data['reg_no'] = $this->input->post('reg_no');
			$this->load->view('theme/common/link');
			$this->load->view('theme/student/header');
			$this->load->view('theme/student/result',$data);
			$this->load->view('theme/common/footer');

	}

}

