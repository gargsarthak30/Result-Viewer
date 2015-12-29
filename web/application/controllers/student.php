<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Student extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->load->model('student_model');
	} 

	public function details()
	{
		
		$check = empty($this->session->userdata('logged'))?'homepage':$this->session->userdata('logged');
		$this->load->library('form_validation');
		$this->load->view('theme/common/link');
		$this->load->view('theme'.'/'.$check.'/header');
		$this->load->view('theme/student/details');
		$this->load->view('theme/common/footer');
	}
	
	public function result()
	{
		$reg_no = $this->input->post('reg_no');
		if(empty($reg_no))
		{
			redirect('student/details');
			exit;
		}
		else
		{
			$check = empty($this->session->userdata('logged'))?'homepage':$this->session->userdata('logged');
			$data['stu_res'] = $this->student_model->student_result($reg_no);
			$data['reg_no'] = $reg_no;
			$this->load->view('theme/common/link');
			$this->load->view('theme'.'/'.$check.'/header');
			$this->load->view('theme/student/result',$data);
			$this->load->view('theme/common/footer');
		}
	}

}

