<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Student extends CI_Controller {
	
	public function signin()
	{
		if($this->session->userdata('logged')=='student')
		{
			redirect('student/result');
		}
		else
		{
			if($this->session->userdata('logged')=='faculty' || $this->session->userdata('logged')=='admin')
			{
				$this->session->sess_destroy();
			}
			$this->load->library('form_validation');
			$this->load->view('theme/common/link');
			$this->load->view('theme/homepage/header');
			$this->load->view('theme/student/signin');
			$this->load->view('theme/common/footer');
		}
	}
	
	public function validate_signin()
	{
		$this->load->library('form_validation');
		
		$this->form_validation->set_rules('college_id', 'School', 'required');
		$this->form_validation->set_rules('reg_no', 'Registeration Number', 'required');
		$this->form_validation->set_rules('pass', 'Password', 'required');
		//$this->form_validation->set_message('min_length', '* Details incorrect !!');
		
		if ($this->form_validation->run() == FALSE)
		{
			$this->signin();
		}
		else
		{
			$this->verify_signin();
		}
	}
	
    public function verify_signin()
	{
		$coll_id=$_POST["college_id"];
		$reg_no=$_POST["reg_no"];
		$pass=$_POST["pass"];
		$q=$this->db->query("select * from users where College_Id='$coll_id' and Roll_No='$reg_no'");
		if( $q->num_rows() == 0 )
		{
			$this->session->set_flashdata('no_rec', '* Details incorrect !!');
			redirect('student/signin');
		}
		else if( $q->num_rows() > 1 )
		{
			echo "Error : Multiple students found !!";
		}
		else
		{
			$row=$q->row();
			if(password_verify($pass, $row->Password))
				{
					$stu_data = array(
                   'roll'  => $reg_no,
                   'coll'  => $coll_id,
				   'logged' => 'student'
					);

					$this->session->set_userdata($stu_data);
					redirect('student/result');
				}
				else
				{
					$this->session->set_flashdata('no_rec', '* Details incorrect !!');
					redirect('student/signin');
				}
		}
	}
	
	public function register()
	{
		$this->load->library('form_validation');
		$this->load->view('theme/common/link');
		$this->load->view('theme/homepage/header');
		$this->load->view('theme/student/register');
		$this->load->view('theme/common/footer');
	}
	
	public function validate_register()
	{
		$this->load->library('form_validation');
		
		$this->form_validation->set_rules('college_id', 'School', 'required');
		$this->form_validation->set_rules('reg_no', 'Registeration Number', 'required');
		$this->form_validation->set_rules('pass', 'Password', 'required|min_length[6]');
		$this->form_validation->set_rules('confpass', 'Confirm Password', 'required|matches[pass]');
		
		if ($this->form_validation->run() == FALSE)
		{
			$this->register();
		}
		else
		{
			$this->verify_register();
		}
	}
	
	public function verify_register()
	{
		$coll_id=$_POST["college_id"];
		$reg_no=$_POST["reg_no"];
		$pass=$_POST["pass"];

		$query=$this->db->query("select * from users where Roll_No='$reg_no'");
		$res=$query->result();
		if($this->db->affected_rows()>0)
		{
			$this->session->set_flashdata('alrdy_reg', '* Student already registered !!');
			redirect('student/register');
		}
		else
		{
			$password = password_hash($pass,PASSWORD_DEFAULT);
			$q=$this->db->query("INSERT INTO users (College_Id,Roll_No,Password)VALUES('$coll_id','$reg_no','$password');");
			if($this->db->affected_rows()==1)
			{
				$this->session->set_flashdata('conf_reg', '* You are successfully registered.<br> Please login here.');
				redirect('student/signin');

			}
		}
	}
	
	public function result()
	{
		if($this->session->userdata('logged')=='student')
		{
			$this->load->view('theme/common/link');
			$this->load->view('theme/student/header');
			$this->load->view('theme/student/result');
			$this->load->view('theme/common/footer');
		}
		else
		{
			redirect('home');
		}

	}
	
	public function logout()
	{
		$this->session->sess_destroy();
		redirect('home');
	}
}

