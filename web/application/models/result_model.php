<?php
class Result_model extends CI_Model {

	public function __construct()
	{
		$this->load->database();
	}
	
	public function student_result($reg_no)
	{
		$q1 = $this->db->query("Select * from rs_school where Roll_No = '$reg_no' AND Published = '1' ORDER BY Semester DESC");
		return $q1->result();
	}
	
	public function faculty_id()
	{
		$fac_username = $this->session->userdata('user_name');
		$q2 = $this->db->query("SELECT Faculty_Id FROM rs_faculty WHERE Username = '$fac_username';");
		return $q2->row()->Faculty_Id;
	}

	public function faculty_sheets($fac_id)
	{
		$q3 = $this->db->query("SELECT * FROM rs_excel_details WHERE Faculty_Id = '$fac_id' ORDER BY Sheet_Id DESC;");
		return $q3->result();
	}
	
	public function school_list()
	{
		$q4 = $this->db->query("SELECT College_Id FROM rs_master");
		return $q4->result();
	}
	
	public function faculty_verify()
	{
		$user = $this->input->post('username');
		$pass = $this->input->post('password');
		$q5=$this->db->query("select * from rs_faculty where Username='$user'");
		if( $q5->num_rows() == 0 )
		{
			return 0;
		}
		else if( $q5->num_rows() > 1 )
		{
			return 1;
		}
		else
		{
			$row=$q5->row();
			if(password_verify($pass, $row->Password))
			{
					$fac_data = array(
                   'user_name'  => $user,
				   'logged' => 'faculty'
					);

					$this->session->set_userdata($fac_data);
					return 2;
			}
			else
			{
					return 0;
			}
		}
		return $q5->row();
	}
	
	public function excel_upload($fac_id)
	{
		if(isset($_POST["submit"]))
		{
			$file = $_FILES['file']['tmp_name'];
			$handle = fopen($file, "r");
			$c = 0;
			$sem=$_POST["semester"];
			$course=$_POST["course_code"];
			$school=$_POST["school"];
			$department=$_POST["dept"];
			$school = strtolower($school);
			$this->db->trans_start();
				$sheets = $this->db->query("INSERT INTO rs_excel_details(Faculty_Id, College_Id, Semester, Department, Course_Code) VALUES ('$fac_id','$school','$sem','$department','$course');");
				$sheet_id = $this->db->insert_id();
			$this->db->trans_complete();
			while(($filesop = fgetcsv($handle, 1000, ",")) !== false)
			{
				$c = $c + 1;
				if ($c > 12)
				{     
					$s = $filesop[0];
					$r = $filesop[1];
					$m = $filesop[2];
					$mw =$filesop[3];
					$mw1 =$filesop[4];
					$mw2 =$filesop[5];
					$mw3 =$filesop[6];
					
					$sno="S_No";
					$roll="Roll_No";
					$sm="S-M";
					$mt="M-T";
					$et="E-T";
					$total="Total";
					$grade="Grades";
		
					$sql = $this->db->query("INSERT INTO  rs_school(Roll_No, S_M, M_T, E_T, Total, Grades, Semester, Course_Code, Sheet_Id) VALUES ('$r','$m','$mw','$mw1','$mw2','$mw3','$sem','$course','$sheet_id');");
		
				}
			}
		}
		if($this->db->affected_rows()>0)
		{
			$upload_status = 1;       
		}
		else
		{
			$upload_status = 0;
		}
		return $upload_status;
	}
	
}