<?php
class Excel_model extends CI_Model {

	public function __construct()
	{
		$this->load->database();
	}
	
	public function visible($sheet_id)
	{
		$this->db->query("UPDATE rs_school SET Published = '1' WHERE Sheet_Id = '$sheet_id';");
		$this->db->query("UPDATE rs_excel_details SET Published = '1' WHERE Sheet_Id = '$sheet_id';");
		if($this->db->affected_rows()==1)
		{
			return 1;
		}
		else
		{
			return 0;
		}
	}
}