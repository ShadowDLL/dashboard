<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Parameters extends MY_Controller
{
	function __construct()
	{
		parent::__construct('parameter');
		
		$this->data['module']		= 'System Parameters';
		$this->data['view_path']	= 'default';
	}
}
