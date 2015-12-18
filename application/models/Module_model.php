<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Module_model extends MY_Model{
	
	function __construct()
	{
		parent::__construct();
		
		$this->tablename = 'module';
		$this->setFields();
		$this->setRelations();
		$this->labels = [
			'menu_id'		=> 'Menu',
			'name'			=> 'Nome',
			'controller'	=> 'Controller'
		];
	}
	
	public function getByMenu($menu_id)
	{
		return $this->db->get_where($this->tablename, array(
			'menu_id'		=> $menu_id,
			'deleted_at'	=> '0000-00-00 00:00:00'
		))->result();
	}
	
	public function exists($menu_id, $controller)
	{
		$data = $this->db->get_where($this->tablename, array(
			'menu_id'		=> $menu_id, 
			'controller'	=> $controller,
			'deleted_at'	=> '0000-00-00 00:00:00'
		))->result();
		
		if(count($data) > 0){
			return true;
		}
		
		return false;
	}
	
	public function deleteModule($controller)
	{
		$this->db->delete($this->tablename, array(
			'controller' => $controller
		));
	}
}

