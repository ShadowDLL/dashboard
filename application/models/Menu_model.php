<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Menu_model extends MY_Model{
	
	function __construct()
	{
		parent::__construct();
		
		$this->tablename = 'menu';
		$this->setFields();
		$this->setRelations();
		$this->labels = [
			'name' => 'Name'
		];
	}
}

