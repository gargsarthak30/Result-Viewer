<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Contact extends CI_Controller {
	
	public function message($back)
	{
		$name = $this->input->post('name');
		$email = $this->input->post('email');
		$message = $this->input->post('message');
		
		$contact_q = $this->db->query("INSERT INTO rs_messages (Name, Email, Message) VALUES ('$name', '$email', '$message');");
		if($this->db->affected_rows()==1)
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
			$this->load->view('theme/common/link');
			$this->load->view('theme/admin/header');
			$this->load->view('theme/admin/messages');
			$this->load->view('theme/common/footer');
		}
		else
		{
			redirect('home');
		}
	}

}