<?php
class Contact_model extends CI_Model {

	public function __construct()
	{
		$this->load->database();
	}
	
	public function save()
	{
		$name = $this->input->post('name');
		$email = $this->input->post('email');
		$message = $this->input->post('message');
		
		$contact_q = $this->db->query("INSERT INTO rs_messages (Name, Email, Message) VALUES ('$name', '$email', '$message');");
		if($this->db->affected_rows()==1)
		{
			return 1;
		}
		else
		{
			return 0;	
		}
	}

	public function read()
	{
		$msg_q = $this->db->query("SELECT * FROM rs_messages");
		return $msg_q;
	}

}