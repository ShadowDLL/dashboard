<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Permission_model extends MY_Model{
	
	function __construct()
	{
		parent::__construct();
		
		$this->tablename = 'permission';
		$this->setFields();
		$this->setRelations();
		$this->labels = [
			'module_id'	=> 'Module',
			'group_id'	=> 'Group',
			'p_index'	=> 'Read',
			'p_insert'	=> 'Insert',
			'p_update'	=> 'Update',
			'p_delete'	=> 'Delete',
			'p_export'	=> 'Export',
			'p_print'	=> 'Print',
			'p_search'	=> 'Search'
		];
	}
	
	public function hasPermission($controller, $method)
	{
		if($this->Parameter->_get('use_permissions') == '0'){
			return true;
		}
		
		if($this->session->userdata('USER_GROUP') == '1'){
			return true;
		}
		
		$methods = array(
			'index'		=> 'p_index',
			'insert'	=> 'p_insert',
			'update'	=> 'p_update',
			'delete'	=> 'p_delete',
			'export'	=> 'p_export',
			'print'		=> 'p_print',
			'search'	=> 'p_search'
		);
		
		$exclude_controllers = array(
			'auth',
			'dashboard'
		);
		
		$exclude_methods = array(
			'addPermission',
			'removePermission'
		);
		
		if(in_array($controller, $exclude_controllers) || in_array($method, $exclude_methods)){
			return true;
		}
		
		$this->db->select($methods[$method]);
		
		$this->db->from('permission');
		$this->db->join('group', 'group.id = permission.group_id');
		
		$this->db->where('permission.module', $controller);
		$this->db->where('permission.'.$methods[$method], '1');
		$this->db->where('permission.deleted_at', '0000-00-00 00:00:00');
		
		$this->db->where('permission.group_id', $this->session->userdata('USER_GROUP'));
		
		$query = $this->db->get();
		
		if($query->num_rows() == 0){
			return false;
		}
		
		return true;
	}
	
	public function isPermission($module, $group, $method)
	{
		$this->db->select($method);
		
		$this->db->from('permission');
		$this->db->join('group', 'group.id = permission.group_id');
		
		$this->db->where('permission.module', $module);
		$this->db->where('group.id', $group);
		$this->db->where('permission.'.$method, '1');
		$this->db->where('permission.deleted_at', '0000-00-00 00:00:00');
		
		$query = $this->db->get();
		
		if($query->num_rows() == 0){
			return false;
		}
		
		return true;
	}
	
	public function addPermission($data)
	{
		$data[$data['method']] = '1';
		unset($data['method']);
		
		$this->db->insert($this->tablename, $data);
	}
	
	public function removePermission($data)
	{
		$data[$data['method']] = '1';
		unset($data['method']);
		
		$this->db->where($data);
		$this->db->delete($this->tablename);
	}
}

