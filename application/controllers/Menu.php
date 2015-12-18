<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Menu extends MY_Controller
{
	function __construct()
	{
		parent::__construct('menu');
		
		$this->data['module']		= 'System Menu';
		$this->data['view_path']	= 'default';
	}
}
