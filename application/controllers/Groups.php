<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Groups extends MY_Controller
{
	function __construct()
	{
		parent::__construct('group');
		
		$this->data['module']		= 'User Groups';
		$this->data['view_path']	= 'default';
	}
}
