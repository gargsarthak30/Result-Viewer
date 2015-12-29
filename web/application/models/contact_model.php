<?php
class Contact_model extends CI_Model {

	public function __construct()
	{
		$this->load->database();
	}
	
	public function save()
	{
		$name = html_escape($this->input->post('name'));
		$email = html_escape($this->input->post('email'));
		$message = html_escape($this->input->post('message'));
		
		$contact_q = $this->db->query("INSERT INTO rs_messages (Name, Email, Message) VALUES (".$this->db->escape($name).", ".$this->db->escape($email).", ".$this->db->escape($message).");");
		if($this->db->affected_rows()==1)
		{
			$action = "Contacted Admin";
			$this->logs_model->insert($action);
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