<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Student extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->load->model('result_model');
	}

	public function details()
	{
			$this->load->library('form_validation');
			$this->load->view('theme/common/link');
			$this->load->view('theme/homepage/header');
			$this->load->view('theme/student/details');
			$this->load->view('theme/common/footer');
	}
	
	public function result()
	{
			$reg_no = $this->input->post('reg_no');
			$data['stu_res'] = $this->result_model->student_result($reg_no);
			$data['reg_no'] = $reg_no;
			$this->load->view('theme/common/link');
			$this->load->view('theme/student/header');
			$this->load->view('theme/student/result',$data);
			$this->load->view('theme/common/footer');

	}

}

