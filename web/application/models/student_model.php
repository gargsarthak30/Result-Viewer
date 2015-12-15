<?php
class Student_model extends CI_Model {

	public function __construct()
	{
		$this->load->database();
	}
	
	public function student_result($reg_no)
	{
		$q1 = $this->db->query("Select * from rs_school where Roll_No = '$reg_no' AND Published = '1' ORDER BY Semester DESC");
		return $q1->result();
	}

}