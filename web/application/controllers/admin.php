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
		else
		{
			if($this->session->userdata('logged')=='faculty')
			{
				$this->session->sess_destroy();
			}
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
	
	public function verify_signin()
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
	public function search()
	{
		if($this->session->userdata('logged')=='admin')
		{
			$this->load->library('form_validation');
			$this->load->view('theme/common/link');
			$this->load->view('theme/admin/header');
			$this->load->view('theme/admin/search');
			$this->load->view('theme/common/footer');
		}
		else
		{
			redirect('home');
		}
	}
	public function search_result()
	{
		if($this->session->userdata('logged')=='admin')
		{
			$this->load->library('form_validation');
			$this->load->view('theme/common/link');
			$this->load->view('theme/admin/header');
			$this->load->view('theme/admin/search_result');
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

	public function verify_add_faculty()
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

	public function verify_change_admin()
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
	
	public function logout()
	{
		$this->session->sess_destroy();
		redirect('home');
	}
}

