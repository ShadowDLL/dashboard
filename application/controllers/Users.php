<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends MY_Controller
{
	function __construct()
	{
		parent::__construct('user');
		
		$this->data['module']		= 'Users';
		$this->data['view_path']	= 'default';
	}
}
