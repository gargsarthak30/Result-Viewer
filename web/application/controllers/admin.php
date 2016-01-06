<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('admin_model');
	}
	
	public function signin()
	{
		if($this->session->userdata('logged')=='admin')
		{
			redirect('admin/all_faculty');
		}
		else if($this->session->userdata('logged')=='faculty')
		{
			redirect('faculty/upload_form');
		}
		else
		{
			$this->load->library('form_validation');
			$this->load->view('theme/common/link');
			$this->load->view('theme/homepage/header');
			$this->load->view('theme/admin/signin');
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
		$q = $this->admin_model->admin_verify();
		if( $q == 0 )
		{
			$this->session->set_flashdata('no_rec', '* Details incorrect !!');	
			redirect('admin/signin');
		}
		else if( $q == 1 )
		{
			echo "Error : Multiple admins found !!";
		}
		else if($q == 2)
		{
			$action = "Logged-In";
			$this->logs_model->insert($action);
			redirect('admin/all_faculty');
		}
	}

	public function add_faculty()
	{
		if($this->session->userdata('logged')=='admin')
		{
			$this->load->library('form_validation');
			$this->load->view('theme/common/link');
			$this->load->view('theme/admin/header');
			$this->load->view('theme/admin/add_faculty');
			$this->load->view('theme/common/footer');
		}
		else
		{
			redirect('home');
		}
	}
	
	public function validate_add_faculty()
	{
		if($this->session->userdata('logged')=='admin')
		{
			$this->load->library('form_validation');

			$this->form_validation->set_rules('full_name', 'Full Name', 'required');
			$this->form_validation->set_rules('email', 'Email', 'required');
			$this->form_validation->set_rules('username', 'Username', 'required|min_length[4]');
			$this->form_validation->set_rules('password', 'Password', 'required|min_length[6]');
			$this->form_validation->set_rules('confpass', 'Confirm Password', 'required|matches[password]');

			if ($this->form_validation->run() == FALSE)
			{
				$this->add_faculty();
			}
			else
			{
				$this->verify_add_faculty();
			}
		}
		else
		{
			redirect('home');
		}

	}

	private function verify_add_faculty()
	{
		if($this->session->userdata('logged')=='admin')
		{
			$q = $this->admin_model->add_faculty();
			if($q==0)
			{
				redirect('admin/add_faculty');
			}
			else if($q==1)
			{
				redirect('admin/all_faculty');

			}
		}
		else
		{
			redirect('home');
		}
	}

	public function all_faculty()
	{
		if($this->session->userdata('logged')=='admin')
		{
			$data['all_fac'] = $this->admin_model->all_fac();
			$this->load->view('theme/common/link');
			$this->load->view('theme/admin/header');
			$this->load->view('theme/admin/all_faculty',$data);
			$this->load->view('theme/common/footer');
		}
		else
		{
			redirect('home');
		}
	}

	public function remove_faculty()
	{
		if($this->session->userdata('logged')=='admin')
		{
			$this->admin_model->del_fac();
			redirect('admin/all_faculty');
		}
		else
		{
			redirect('home');
		}
	}

	public function change_admin()
	{
		if($this->session->userdata('logged')=='admin')
		{
			$this->load->library('form_validation');
			$this->load->view('theme/common/link');
			$this->load->view('theme/admin/header');
			$this->load->view('theme/admin/change_admin');
			$this->load->view('theme/common/footer');
		}
		else
		{
			redirect('home');
		}
	}

	public function validate_change_admin()
	{
		if($this->session->userdata('logged')=='admin')
		{
			$this->load->library('form_validation');
		
			$this->form_validation->set_rules('full_name', 'Full Name', 'required');
			$this->form_validation->set_rules('email', 'Email', 'required');
			$this->form_validation->set_rules('username', 'Username', 'required|min_length[4]');
			$this->form_validation->set_rules('password', 'Password', 'required|min_length[6]');
			$this->form_validation->set_rules('confpass', 'Confirm Password', 'required|matches[password]');
		
			if ($this->form_validation->run() == FALSE)
			{
				$this->change_admin();
			}
			else
			{
				$this->verify_change_admin();
			}
		}
		else
		{
			redirect('home');
		}

	}

	private function verify_change_admin()
	{
		if($this->session->userdata('logged')=='admin')
		{
			$x = $this->admin_model->change_admin();
			if($x==0)
			{	
				redirect('admin/change_admin');
			}
			else if($x==1)
			{
				redirect('home');
			}
		}
		else
		{
			redirect('home');
		}
	}

	public function view_logs()
	{
		if($this->session->userdata('logged')=='admin')
		{
			$data['logs'] = $this->logs_model->read_logs();
			$this->load->view('theme/common/link');
			$this->load->view('theme/admin/header');
			$this->load->view('theme/admin/logs',$data);
			$this->load->view('theme/common/footer');	
		}
		else
		{
			redirect('home');
		}
	}

	public function change_password()
	{
		if($this->session->userdata('logged')=='admin')
		{
			$this->load->library('form_validation');
			$this->load->view('theme/common/link');
			$this->load->view('theme/admin/header');
			$this->load->view('theme/admin/settings');
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
		$status = $this->admin_model->change_pass();
		if($status==1)
		{
			$this->session->set_flashdata('pass', '* Your password has been successfully changed !!');
			redirect('admin/change_password');
		}
		else if($status==0)
		{
			$this->session->set_flashdata('pass', '* Some problem occured. Please change again !!');
			redirect('admin/change_password');
		}
		else if($status==-1)
		{
			$this->session->set_flashdata('wrong_curr_pass', '* Current Password is Wrong !!');
			redirect('admin/change_password');
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

