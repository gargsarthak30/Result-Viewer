<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Faculty extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('faculty_model');
	}
	
	public function signin()
	{
		if($this->session->userdata('logged')=='faculty')
		{
			redirect('faculty/upload_form');
		}
		else if($this->session->userdata('logged')=='admin')
		{
			redirect('admin/all_faculty');
		}
		else
		{
			$this->load->library('form_validation');
			$this->load->view('theme/common/link');
			$this->load->view('theme/homepage/header');
			$this->load->view('theme/faculty/signin');
			$this->load->view('theme/common/footer');
		}
		
	}
	
	public function validate_signin()
	{	
		$this->load->library('form_validation');
		
		$this->form_validation->set_rules('username', 'Username', 'required');
		$this->form_validation->set_rules('password', 'Password', 'required');
		
		if ($this->form_validation->run() == FALSE)
		{
			$this->signin();
		}
		else
		{
			$this->verify_signin();
		}
	}
	
	private function verify_signin()
	{
		$q = $this->faculty_model->faculty_verify();
		if( $q == 0 )
		{
			$this->session->set_flashdata('no_rec', '* Details incorrect !!');	
			redirect('faculty/signin');
		}
		else if( $q == 1 )
		{
			echo "Error : Multiple faculty found !!";
		}
		else if($q == 2)
		{
			redirect('faculty/upload_form');
		}
		else if($q == 3)
		{
			$this->session->set_flashdata('no_rec', '* You account has not been approved by admin yet !!');	
			redirect('faculty/signin');
		}
	}

	public function register()
	{
		$this->load->library('form_validation');
		$this->load->view('theme/common/link');
		$this->load->view('theme/faculty/header');
		$this->load->view('theme/faculty/register');
		$this->load->view('theme/common/footer');
	}
	
	public function validate_register()
	{
		$this->load->library('form_validation');

		$this->form_validation->set_rules('full_name', 'Full Name', 'required');
		$this->form_validation->set_rules('email', 'Email', 'required');
		$this->form_validation->set_rules('username', 'Username', 'required|min_length[4]');
		$this->form_validation->set_rules('password', 'Password', 'required|min_length[6]');
		$this->form_validation->set_rules('confpass', 'Confirm Password', 'required|matches[password]');

		if ($this->form_validation->run() == FALSE)
		{
			$this->register();
		}
		else
		{
			$this->do_register();
		}
	}

	private function do_register()
	{
		$q = $this->faculty_model->register();
		if($q==0)
		{
			redirect('faculty/register');
		}
		else if($q==1)
		{
			redirect('faculty/signin');
		}
	}
	
	public function upload_form()
	{
		if($this->session->userdata('logged')=='faculty')
		{
			$this->load->library('form_validation');
			$this->load->helper('html');
			$data['sch_list'] = $this->faculty_model->school_list();
			$this->load->view('theme/common/link');
			$this->load->view('theme/faculty/header');
			$this->load->view('theme/faculty/upload',$data);
			$this->load->view('theme/common/footer');
		}
		else
		{
			redirect('home');
		}
	}

	public function validate_upload()
	{	
		$this->load->library('form_validation');
		
		$this->form_validation->set_rules('school', 'School', 'required');
		$this->form_validation->set_rules('type_course', 'Course Type', 'required');
		$this->form_validation->set_rules('dept', 'Department', 'required');
		$this->form_validation->set_rules('course_code', 'Course Code', 'required');
		$this->form_validation->set_rules('semester', 'Semester', 'required');
		
		if ($this->form_validation->run() == FALSE)
		{
			$this->upload_form();
		}
		else
		{
			$this->upload_db();
		}
	}

	private function upload_db()
	{
		if($this->session->userdata('logged')=='faculty')
		{
			$FileType = pathinfo($_FILES['file']['name'],PATHINFO_EXTENSION);
			if($FileType == 'csv')
			{
				$fac_id = $this->faculty_model->faculty_id();
				$upload_status = $this->faculty_model->excel_upload($fac_id);
				if($upload_status==1)
				{
					$this->session->set_flashdata('uploaded', '* Your excel sheet has been successfully uploaded !!');
					redirect('faculty/sheets');
				}
				else if($upload_status==0)
				{
					$this->session->set_flashdata('uploaded', '* Some problem occured. Please upload again !!');
					redirect('faculty/upload_form');
				}
			}
			else
			{
				$this->session->set_flashdata('uploaded', '*Error !! Please upload only .csv files !!');
				redirect('faculty/upload_form');
			}
		}
		else
		{
			redirect('home');
		}	
	}
	
	public function sheets()
	{
		if($this->session->userdata('logged')=='faculty')
		{
			$fac_id = $this->faculty_model->faculty_id();
			$data['fac_sht'] = $this->faculty_model->faculty_sheets($fac_id);
			$this->load->view('theme/common/link');
			$this->load->view('theme/faculty/header');
			$this->load->view('theme/faculty/existing_sheets',$data);
			$this->load->view('theme/common/footer');
		}
		else
		{
			redirect('home');
		}

	}

	public function change_password()
	{
		if($this->session->userdata('logged')=='faculty')
		{
			$this->load->library('form_validation');
			$this->load->view('theme/common/link');
			$this->load->view('theme/faculty/header');
			$this->load->view('theme/faculty/settings');
			$this->load->view('theme/common/footer');
		}
		else
		{
			redirect('home');
		}		
	}

	public function validate_change_pass()
	{
		$this->load->library('form_validation');
	
		$this->form_validation->set_rules('curr_pass', 'Current Password', 'required');
		$this->form_validation->set_rules('new_pass', 'New Password', 'required|min_length[6]');
		$this->form_validation->set_rules('conf_pass', 'Confirm Password', 'required|min_length[6]|matches[new_pass]');
	
		if ($this->form_validation->run() == FALSE)
		{
			$this->change_password();
		}
		else
		{
			$this->do_change_pass();
		}
	}

	public function do_change_pass()
	{
		$fac_id = $this->faculty_model->faculty_id();
		$status = $this->faculty_model->change_pass($fac_id);
		if($status==1)
		{
			$this->session->set_flashdata('pass', '* Your password has been successfully changed !!');
			redirect('faculty/change_password');
		}
		else if($status==0)
		{
			$this->session->set_flashdata('pass', '* Some problem occured. Please change again !!');
			redirect('faculty/change_password');
		}
		else if($status==-1)
		{
			$this->session->set_flashdata('wrong_curr_pass', '* Current Password is Wrong !!');
			redirect('faculty/change_password');
		}
	}
	
	public function logout()
	{
		$action = "Logged-Out";
		$this->logs_model->insert($action);
		$this->session->sess_destroy();
		redirect('home');
	}
}

