<?php
class Faculty_model extends CI_Model {

	public function __construct()
	{
		$this->load->database();
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
		$q4 = $this->db->query("SELECT School FROM rs_master");
		return $q4->result();
	}
	
	public function faculty_verify()
	{
		$user = $this->input->post('username');
		$pass = $this->input->post('password');
		$q5=$this->db->query("select Approved,Password from rs_faculty where Username='$user'");
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
			if($row->Approved == 1)
			{
				if(password_verify($pass, $row->Password))
				{
					$fac_data = array(
                   'user_name'  => $user,
				   'logged' => 'faculty'
					);

					$this->session->set_userdata($fac_data);
					$action = "Logged-In";
					$this->logs_model->insert($action);
					return 2;
				}
				else
				{
					return 0;
				}	
			}
			else
			{
				return 3;
			}
			
		}
	}

	public function register()
	{
		$full_name = html_escape($_POST["full_name"]);
		$email = html_escape($_POST["email"]);
		$username = html_escape($_POST["username"]);
		$password = html_escape($_POST["password"]);
		
		$query=$this->db->query("select * from rs_faculty where Username='$username'");
		$res=$query->result();
		if($this->db->affected_rows()>0)
		{
			$this->session->set_flashdata('alrdy_add', '* This username is already in use.<br/>Please choose another username !!');
			return 0;
		}
		else
		{
			$pass = password_hash($password,PASSWORD_DEFAULT);
			$q=$this->db->query("INSERT INTO rs_faculty (Full_Name,Username,Password,Email,Pass_Link)VALUES(".$this->db->escape($full_name).",".$this->db->escape($username).",".$this->db->escape($pass).",".$this->db->escape($email).", 'rv');");
			if($this->db->affected_rows()==1)
			{
				$this->session->set_flashdata('conf_add', 'You are successfully registered !! The admin will contact you for account verification.');
				return 1;

			}
		}
	}
	
	public function excel_upload($fac_id)
	{
		if(isset($_POST["submit"]))
		{
			$file = $_FILES['file']['tmp_name'];
			$handle = fopen($file, "r");
			$c = 0;
			$sem = html_escape($_POST["semester"]);
			$course = html_escape($_POST["course_code"]);
			$department = html_escape($_POST["dept"]);
			$type_course = $_POST["type_course"];
			$school = $_POST["school"];
			$school = strtolower($school);
			$this->db->trans_start();
				$sheets = $this->db->query("INSERT INTO rs_excel_details(Faculty_Id, School, Semester, Department, Course_Code) VALUES ('$fac_id','$school',".$this->db->escape($sem).",".$this->db->escape($department).",".$this->db->escape($course).");");
				$sheet_id = $this->db->insert_id();
			$this->db->trans_complete();
			if($type_course == 'th')
			{
				while(($filesop = fgetcsv($handle, 1000, ",")) !== false)
				{
					$c = $c + 1;
					if ($c > 12)
					{     
						$rn1 = html_escape($filesop[1]);
						$sm1 = html_escape($filesop[2]);
						$mt1 = html_escape($filesop[3]);
						$et1 = html_escape($filesop[4]);
						$total1 = html_escape($filesop[5]);
						$g1 = html_escape($filesop[6]);

						$rn2 = html_escape($filesop[8]);
						$sm2 = html_escape($filesop[9]);
						$mt2 = html_escape($filesop[10]);
						$et2 = html_escape($filesop[11]);
						$total2 = html_escape($filesop[12]);
						$g2 = html_escape($filesop[13]);
			
						$this->db->query("INSERT INTO  rs_school(Roll_No, S_M, M_T, E_T, Total, Grades, School, Department, Semester, Course_Code, Sheet_Id) VALUES (".$this->db->escape($rn1).",".$this->db->escape($sm1).",".$this->db->escape($mt1).",".$this->db->escape($et1).",".$this->db->escape($total1).",".$this->db->escape($g1).",'$school',".$this->db->escape($department).",".$this->db->escape($sem).",".$this->db->escape($course).",'$sheet_id');");
						$this->db->query("INSERT INTO  rs_school(Roll_No, S_M, M_T, E_T, Total, Grades, School, Department, Semester, Course_Code, Sheet_Id) VALUES (".$this->db->escape($rn2).",".$this->db->escape($sm2).",".$this->db->escape($mt2).",".$this->db->escape($et2).",".$this->db->escape($total2).",".$this->db->escape($g2).",'$school',".$this->db->escape($department).",".$this->db->escape($sem).",".$this->db->escape($course).",'$sheet_id');");		
					}
				}
			}
			else if($type_course == 'lb')
			{
				while(($filesop = fgetcsv($handle, 1000, ",")) !== false)
				{
					$c = $c + 1;
					if ($c > 12)		
					{
						$rn1 = html_escape($filesop[1]);
						$sm1 = html_escape($filesop[2]);
						$mt1 = '---';
						$et1 = html_escape($filesop[3]);
						$total1 = html_escape($filesop[4]);
						$g1 = html_escape($filesop[5]);

						$rn2 = html_escape($filesop[7]);
						$sm2 = html_escape($filesop[8]);
						$mt2 = '---';
						$et2 = html_escape($filesop[9]);
						$total2 = html_escape($filesop[10]);
						$g2 = html_escape($filesop[11]);

						$this->db->query("INSERT INTO  rs_school(Roll_No, S_M, M_T, E_T, Total, Grades, School, Department, Semester, Course_Code, Sheet_Id) VALUES (".$this->db->escape($rn1).",".$this->db->escape($sm1).",".$this->db->escape($mt1).",".$this->db->escape($et1).",".$this->db->escape($total1).",".$this->db->escape($g1).",'$school',".$this->db->escape($department).",".$this->db->escape($sem).",".$this->db->escape($course).",'$sheet_id');");
						$this->db->query("INSERT INTO  rs_school(Roll_No, S_M, M_T, E_T, Total, Grades, School, Department, Semester, Course_Code, Sheet_Id) VALUES (".$this->db->escape($rn2).",".$this->db->escape($sm2).",".$this->db->escape($mt2).",".$this->db->escape($et2).",".$this->db->escape($total2).",".$this->db->escape($g2).",'$school',".$this->db->escape($department).",".$this->db->escape($sem).",".$this->db->escape($course).",'$sheet_id');");	
					}
				}
			}
		}
		if($this->db->affected_rows()>0)
		{
			$action = "Uploaded excel Sheet-Id - ".$sheet_id;
			$this->logs_model->insert($action);
			$upload_status = 1;       
		}
		else
		{
			$upload_status = 0;
		}
		return $upload_status;
	}

	public function change_pass($fac_id)
	{
		$curr = $_POST["curr_pass"];
		$new = html_escape($_POST["new_pass"]);
		$orig = $this->db->query("SELECT Password FROM rs_faculty WHERE Faculty_Id = '$fac_id'");


		if(password_verify($curr, $orig->row()->Password))
		{
			$pass = password_hash($new,PASSWORD_DEFAULT);
			$this->db->query("UPDATE rs_faculty SET Password =".$this->db->escape($pass)." WHERE Faculty_Id = '$fac_id'");			
			
			if($this->db->affected_rows()>0)
			{
				$action = "Changed Password";
				$this->logs_model->insert($action);
				$status = 1;       
			}
			else
			{
				$status = 0;
			}
		}
		else
		{
			$status = -1;
		}
		return $status;	
	}
		
}