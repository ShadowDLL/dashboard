<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Group_model extends MY_Model{
	
	function __construct()
	{
		parent::__construct();
		
		$this->tablename = 'group';
		$this->setFields();
		$this->setRelations();
		$this->labels = [
			'name' => 'Name'
		];
	}
}

