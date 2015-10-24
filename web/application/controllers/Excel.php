<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Excel extends CI_Controller {

	public function view()
	{
	
	}
	
	public function remove()
	{		  
		$sheet_id = $this->input->post('sid');
		$faculty_id = $this->input->post('fid');
		$this->db->query("DELETE FROM excel_details WHERE Faculty_Id = '$faculty_id' AND Sheet_Id = '$sheet_id';");
		if($this->db->affected_rows()==1)
		{
			$this->session->set_flashdata('sheet_remove', 'Excel Sheet has been permanently removed !!');
		}
		else
		{
			$this->session->set_flashdata('sheet_remove', 'There was some error !! <br/>Please try again.');
		}
		redirect('faculty/sheets');
	}
	
}

