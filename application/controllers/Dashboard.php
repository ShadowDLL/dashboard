<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends MY_Controller
{
	function __construct()
	{
		parent::__construct('dashboard');
		
		$this->data['module'] = 'Dashboard';
	}
	
	public function getAccessFeed()
	{
		print($this->Model->getAccessFeed(date('Y-m').'-01', date('Y-m').'-31'));
	}
	
	public function getOperationsFeed()
	{
		print($this->Model->getOperationsFeed());
	}
}
