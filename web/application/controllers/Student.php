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
	
	public function validate_details()
	{
		$this->load->library('form_validation');
		$this->form_validation->set_rules('college_id', 'School', 'required');
		$this->form_validation->set_rules('reg_no', 'Registeration Number', 'required');
		//$this->form_validation->set_message('min_length', '* Details incorrect !!');
		
		if ($this->form_validation->run() == FALSE)
		{
			$this->details();
		}
		else
		{
			$coll = $_POST['college_id'];
			$roll = $_POST['reg_no'];
			$roll = str_replace("/","-",$roll);
			redirect('student/result'.'/'.$coll.'/'.$roll);
		}
	}
	
	public function result($coll, $roll)
	{
			$roll = str_replace("-","/",$roll);
			$data['coll_id'] = $coll;
			$data['reg_no'] = $roll; 
			$this->load->view('theme/common/link');
			$this->load->view('theme/student/header');
			$this->load->view('theme/student/result',$data);
			$this->load->view('theme/common/footer');

	}

}

