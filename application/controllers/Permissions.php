<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Permissions extends MY_Controller
{
	function __construct()
	{
		parent::__construct('permission');
		
		$this->data['module'] = 'Modules & Permissions';
	}
	
	public function index($page=0)
	{
		$this->load->model('Group_model', 'Group');
		
		$this->data['modules']	= scandir(MODULEPATH);
		$this->data['groups']	= $this->Group->all();
		
		$this->render();
	}
	
	public function addPermission()
	{
		if($_POST){
			$this->Model->addPermission($_POST);
		}
		
		redirect($this->router->class);
	}
	
	public function removePermission()
	{
		if($_POST){
			$this->Model->removePermission($_POST);
		}
		
		redirect($this->router->class);
	}
	
	public function addModuleToMenu()
	{
		if($_POST){
			$this->load->model('Module_model', 'Module');
			
			if(!$this->Module->exists($_POST['menu_id'], $_POST['module'])){
				$this->Module->deleteModule($_POST['module']);
				
				if($_POST['menu_id'] !== '0'){
					$_POST['name']			= parseFieldName($_POST['module']);
					$_POST['controller']	= $_POST['module'];
					unset($_POST['module']);
					
					$this->Module->insert($_POST);
				}
			}
		}
		
		die();
	}
	
	public function yesToAll()
	{
		$methods = array('p_index','p_insert','p_update','p_delete','p_export','p_print','p_search');
		
		if($_POST){
			var_dump($_POST);
			
			foreach($methods as $m){
				$_POST['method'] = $m;
				$this->Model->addPermission($_POST);
				unset($_POST[$m]);
			}
		}
		
		redirect($this->router->class);
	}
	
	public function noToAll()
	{
		$methods = array('p_index','p_insert','p_update','p_delete','p_export','p_print','p_search');
		
		if($_POST){
			var_dump($_POST);
			
			foreach($methods as $m){
				$_POST['method'] = $m;
				$this->Model->removePermission($_POST);
				unset($_POST[$m]);
			}
		}
		
		redirect($this->router->class);
	}
}
