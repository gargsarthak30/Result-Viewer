<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Password extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('password_model');
	}

	var $un = NULL;

	public function index()
	{
		$this->forget_form();
	}

	public function forget_form()
	{
		$this->load->library('form_validation');
		$this->form_validation->set_rules('username', 'Username', 'required|callback_username_check');
	
		if ($this->form_validation->run() == FALSE)
		{
			$this->load->view('theme/common/link');
			$this->load->view('theme/homepage/header');
			$this->load->view('theme/common/forget_password');
			$this->load->view('theme/common/footer');
		}
		else
		{
			$this->imp_work();
		}
		
	}

	public function username_check()
	{
		$username = $this->input->post('username');
		$this->un = $username; 
		$this->form_validation->set_message('username_check', 'This username does not exist !!');
		return $this->password_model->verify($username);
	}

	private function imp_work()
	{
		$pass_link = bin2hex(openssl_random_pseudo_bytes(18));
		$this->password_model->update_pass_link($this->un, $pass_link);
		$email_add = $this->password_model->get_email_add($this->un);
		$this->send_mail($email_add, $pass_link);	
	}

	private function send_mail($email, $pass_link)
	{
		$this->load->library('email');

		$data['username'] = $this->un;
		$data['pass_link'] = $pass_link;
		$this->email->from('support@resultviewer.esy.es', 'GBU-Result');
		$this->email->to($email);

		$this->email->subject('Password Reset');
		$this->email->message($this->load->view('theme/common/mail_content',$data));

		if($this->email->send())
     	{
     		$this->session->set_flashdata('conf_mail', '* Your password reset link has been sent to your email address:\n'.$email);
			redirect('faculty/signin');
     	}
     	else
    	{
     		$this->session->set_flashdata('conf_mail', 'There was some error. Please Try Again !!!');
			redirect('password');
    	}
	}

	public function reset($username, $pass_link)
	{
		$q = $this->password_model->verify_pass_link($username, $pass_link);
		if($q==0)
		{
			$this->session->set_flashdata('verify_link', 'Your password reset link is expired. Please fill the Feorget Password form once again.');
			redirect('password');	
		}
		else if($q==1)
		{
			$this->reset_form();
		}

	}

	public function reset_form()
	{
		$this->load->library('form_validation');
		$this->form_validation->set_rules('new_pass', 'New Password', 'required');
		$this->form_validation->set_rules('conf_pass', 'Confirm Password', 'required|matches[new_pass]');
	
		if ($this->form_validation->run() == FALSE)
		{
			$this->load->view('theme/common/link');
			$this->load->view('theme/homepage/header');
			$this->load->view('theme/common/reset_password');
			$this->load->view('theme/common/footer');
		}
		else
		{
			$this->do_reset();
		}
	}

	public function do_reset()
	{
		$status = $this->password_model->reset_pass($this->un);
		if($status==1)
		{
			$this->session->set_flashdata('pass_reset', '* Your password has been successfully reset !!');
			redirect('faculty/signin');
		}
		else if($status==0)
		{
			$this->session->set_flashdata('pass_reset', '* Some problem occured. Please fill Forget Password form again !!');
			redirect('password');
		}
	}

}