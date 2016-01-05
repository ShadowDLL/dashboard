<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends MY_Controller {

	function __construct()
	{
		parent::__construct('auth');
		
		$this->data['buttons'] = [
			'my_account' => ['save']
		];
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
		if($_POST){
			$this->load->model('User_model', 'User');
			$this->User->update($this->session->userdata('USER_ID'), $_POST);
		}
		
		$this->data['my_account'] = $this->Model->get($this->session->userdata('USER_ID'));
		
		$this->render();
	}
	
	public function change_password()
	{
		if($_POST){
			$this->load->model('User_model', 'User');
			$this->User->update($this->session->userdata('USER_ID'), $_POST);
		}
		
		$this->data['my_account'] = $this->Model->get($this->session->userdata('USER_ID'));
		
		$this->render();
	}
	
	public function history()
	{
		$this->render();
	}
}

