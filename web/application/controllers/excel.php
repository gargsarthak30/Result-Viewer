<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Excel extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('excel_model');
	}

	public function view()
	{
		if($this->session->userdata('logged')=='faculty')
		{
			//don't know what to do here !!
		}
		else
		{
			redirect('home');
		}
	}

	public function publish($sheet_id)
	{
		if($this->session->userdata('logged')=='faculty')
		{
			$pub = $this->excel_model->visible($sheet_id);
			if($pub==1)
			{
				$this->session->set_flashdata('published', 'The sheet has been successfully published.'.'\n'.'Now students can see their results.');
			}
			else
			{
				$this->session->set_flashdata('published', 'Some error occurred !'.'\n'.'Please try again.');	
			}
			redirect('faculty/sheets');
		}
		else
		{
			redirect('home');
		}
	}
	
}

