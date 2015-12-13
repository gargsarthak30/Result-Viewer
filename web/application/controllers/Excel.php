<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Excel extends CI_Controller {

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

	public function publish($sheet_id,$school)
	{
		if($this->session->userdata('logged')=='faculty')
		{
			$publish_q = $this->db->query("UPDATE rs_school SET Published = '1' WHERE Sheet_Id = '$sheet_id';");
			$publish_q = $this->db->query("UPDATE rs_excel_details SET Published = '1' WHERE Sheet_Id = '$sheet_id';");
			if($this->db->affected_rows()==1)
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

