<?php defined('BASEPATH') OR exit('No direct script access allowed');

class User_model extends MY_Model{
	
	function __construct()
	{
		parent::__construct();
		
		$this->tablename = 'user';
		$this->setFields();
		$this->setRelations();
		$this->labels = [
			'name'			=> 'Name',
			'group_id'		=> 'Group',
			'email'			=> 'Email',
			'password'		=> 'Password',
			'attachment'	=> 'Avatar',
			'is_active'		=> 'Active'
		];
	}
}

