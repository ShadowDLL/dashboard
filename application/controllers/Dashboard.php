<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends MY_Controller
{
	function __construct()
	{
		parent::__construct('dashboard');
		
		$this->data['module'] = 'Dashboard';
	}
	
	public function getCurrentFeed()
	{
		print($this->Model->getFeed('2015-12-01', '2015-12-31'));
	}
}
