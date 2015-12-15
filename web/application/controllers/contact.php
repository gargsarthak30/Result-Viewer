<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Contact extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->load->model('contact_model');
	}

	public function message($back)
	{
		$save = $this->contact_model->save();
		if($save==1)
		{
			$this->session->set_flashdata('contact_message','Your message has been deliverd !!');
		}
		else
		{
			$this->session->set_flashdata('contact_message','The message was NOT sent due to some error !. Please Try Again.');
		}
		redirect('common/contact/'.$back);	
	}

	public function view_messages()
	{
		if($this->session->userdata('logged')=='admin')
		{
			$data['msg'] = $this->contact_model->read();
			$this->load->view('theme/common/link');
			$this->load->view('theme/admin/header');
			$this->load->view('theme/admin/messages',$data);
			$this->load->view('theme/common/footer');
		}
		else
		{
			redirect('home');
		}
	}

}