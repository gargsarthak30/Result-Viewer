<?php
class Excel_model extends CI_Model {

	public function __construct()
	{
		$this->load->database();
		$this->load->model('faculty_model');
	}
	
	public function view_sheet($sheet_id)
	{
		$original = $this->db->query("SELECT Faculty_Id FROM rs_excel_details WHERE Sheet_Id = '$sheet_id';")->row()->Faculty_Id;
		$now = $this->faculty_model->faculty_id();
		if($original == $now)
		{
			$query = $this->db->query("SELECT * FROM rs_school WHERE (Sheet_Id = '$sheet_id' AND (Roll_No != '' AND Roll_No !='Date:' AND Roll_No !='Signature:')) ORDER BY Roll_No;");
			return $query->result();
		}
		else
		{
			return -1;
		}
	}

	public function visible($sheet_id)
	{
		$original = $this->db->query("SELECT Faculty_Id FROM rs_excel_details WHERE Sheet_Id = '$sheet_id';")->row()->Faculty_Id;
		$now = $this->faculty_model->faculty_id();
		if($original == $now)
		{
			$this->db->query("UPDATE rs_school SET Published = '1' WHERE Sheet_Id = '$sheet_id';");
			$this->db->query("UPDATE rs_excel_details SET Published = '1' WHERE Sheet_Id = '$sheet_id';");
			if($this->db->affected_rows()==1)
			{
				$action = "Published excel Sheet-Id - ".$sheet_id;
				$this->logs_model->insert($action);
				return 0;
			}
			else
			{
				return 1;
			}
		}
		else
		{
			return 2;
		}
	}

	public function delete($sheet_id)
	{
		$original = $this->db->query("SELECT Faculty_Id FROM rs_excel_details WHERE Sheet_Id = '$sheet_id';")->row()->Faculty_Id;
		$now = $this->faculty_model->faculty_id();
		if($original == $now)
		{
			$this->db->query("DELETE FROM rs_school WHERE Sheet_Id = '$sheet_id';");
			$this->db->query("DELETE FROM rs_excel_details WHERE Sheet_Id = '$sheet_id';");
			if($this->db->affected_rows()==1)
			{
				$action = "Deleted excel Sheet-Id - ".$sheet_id;
				$this->logs_model->insert($action);
				return 0;
			}
			else
			{
				return 1;
			}
		}
		else
		{
			return 2;
		}
	}

	public function status_sheet($sheet_id)
	{
		$status_q = $this->db->query("SELECT School,Semester,Department,Course_Code,Published FROM rs_excel_details WHERE Sheet_Id = '$sheet_id';");
		return $status_q->row();
	}
}