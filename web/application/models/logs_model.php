<?php

/*
	Note : This file is "logically" copied from the following source :-

	Repository : https://www.github.com/opengbu/gbuonline/blob/master/users/application/models/Logs_model.php 
	Programmer : Varun Garg
	Project : www.gbuonline.in
*/

/*

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
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
