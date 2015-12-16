<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Excel extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('excel_model');
	}

	public function view($sheet_id)
	{
		if($this->session->userdata('logged')=='faculty')
		{
			$data['sheet_id'] = $sheet_id;
			$data['status'] = $this->excel_model->status_sheet($sheet_id); 
			$data['sheet'] = $this->excel_model->view_sheet($sheet_id);
			if( $data['sheet'] == -1 )
			{		
				$this->session->set_flashdata('punish', 'Thats not your sheet !!'.'\n'.'Do not try again.');
				redirect('faculty/sheets');		
			}
			else
			{
				$this->load->view('theme/common/link');
				$this->load->view('theme/faculty/header');
				$this->load->view('theme/faculty/particular_sheet',$data);
				$this->load->view('theme/common/footer');
			}
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
			if($pub==0)
			{
				$this->session->set_flashdata('published', 'The sheet has been successfully published.'.'\n'.'Now students can see their results.');
			}
			else if($pub==1)
			{
				$this->session->set_flashdata('published', 'Some error occurred !'.'\n'.'Please try again.');	
			}
			else if($pub==2)
			{
				$this->session->set_flashdata('published', 'Thats not your sheet !!'.'\n'.'Do not try again.');	
			}
			redirect('faculty/sheets');
		}
		else
		{
			redirect('home');
		}
	}
	
}

