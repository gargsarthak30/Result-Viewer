<?php

/*
	Note : This file is "logically" copied from the following source :-

	Repository : www.github.com/opengbu/gbuonline/users/application/models/Logs_model.php 
	Programmer : Varun Garg
	Project : www.gbuonline.in
*/

?>

<?php

class Logs_model extends CI_Model {

	public function __construct()
	{
		$this->load->database();
	}

    public function insert($action)
    {
    		date_default_timezone_set("Asia/Kolkata");

            $log_data['date'] = date('Y-m-d');

            $log_data['time'] = date('H:i:s');

            if(empty($this->session->userdata('user_name')))
            {
                $log_data['user_name'] = "---";    
            }
            else
            {
                $log_data['user_name'] = $this->session->userdata('user_name');    
            }
            
            if(empty($this->session->userdata('logged')))
            {
                $log_data['level'] = "student";  
            }
            else
            {
                $log_data['level'] = $this->session->userdata('logged');    
            }

            $log_data['action'] = $action;

            $log_data['ip_address'] = $this->session->userdata('ip_address');

            $log_data['user_agent'] = $this->session->userdata('user_agent');

        	$this->db->insert('rs_logs', $log_data);
    }

    public function read_logs()
    {
        return $this->db->get('rs_logs');
    }

}
