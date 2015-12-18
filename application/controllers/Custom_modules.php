<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Custom_modules extends MY_Controller
{
	function __construct()
	{
		parent::__construct('module');
		
		$this->data['module'] = 'Custom Modules';
	}
}
