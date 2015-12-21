<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Logs extends MY_Controller
{
	function __construct()
	{
		parent::__construct('access');
		
		$this->data['module']		= 'System Log';
		$this->data['view_path']	= 'default';
		$this->data['disabled']		= array(
			'add','save', 'delete', 'export', 'search', 'print'
		);
		
		$this->Model->order = 'id DESC';
	}
}
