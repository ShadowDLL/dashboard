<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends MY_Controller {

	function __construct()
	{
		parent::__construct('auth');
	}

	public function index($page=0)
	{
		redirect('/login');
	}
	
	public function login()
	{
		if($_POST){
			$this->Model->login($_POST);
		}
		
		$this->render();
	}

	public function logout()
	{
		$this->Model->logout();
	}
	
	public function denied()
	{
		$this->render();
	}
	
	public function my_account()
	{
		$this->render();
	}
	
	public function change_password()
	{
		$this->render();
	}
	
	public function history()
	{
		$this->render();
	}
}

