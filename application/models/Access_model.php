<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Access_model extends MY_Model{
	
	function __construct()
	{
		parent::__construct();
		
		$this->tablename = 'access';
		$this->setFields();
		$this->setRelations();
		$this->labels = [
			'user_id'		=> 'User',
			'date'			=> 'Date',
			'controller'	=> 'Controller',
			'method'		=> 'Method',
			'post'			=> 'Posted Data'
		];
	}
	
	public function set($data=array())
	{
		$path		= $this->router->class.'/'.$this->router->method;
		$exclude	= array(
			'dashboard/index',
			'logs/index'
		);
		
		if($this->session->userdata('IS_LOGGED') == 'true'){
			if(!in_array($path, $exclude)){
				$this->db->insert($this->tablename, array(
					'user_id'		=> $this->session->userdata('USER_ID'),
					'date'			=> date('Y-m-d H:i:s'),
					'controller'	=> $this->router->class,
					'method'		=> $this->router->method,
					'origin'		=> json_encode($data),
					'post'			=> json_encode($_POST)
				));
			}
		}
	}
}

