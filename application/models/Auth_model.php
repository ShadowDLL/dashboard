<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Auth_model extends MY_Model {
	
	function __construct()
	{
		parent::__construct();
		
		$this->tablename = 'user';
		$this->setFields();
		$this->setRelations();
		$this->Access->set();
		
		if($this->router->class !== 'auth'){
			$this->is_logged();
			$this->is_active();
		}
	}
	
	public final function login($data = array())
	{
		if($this->Parameter->__get('encrypt-passwords') == 1){
			$data['password'] = md5($data['password']);
		} else {
			$data['password'] = $data['password'];
		}
		
		$data['is_active'] = 1;
		
		$query = $this->db->get_where($this->tablename, $data);
		
		if($query->num_rows() > 0){
			$user = $query->result();
			
			$session = array(
				'IS_LOGGED'		=> 'true',
				'USER_ID'		=> $user[0]->id,
				'USER_NAME'		=> $user[0]->name,
				'USER_SLUG'		=> $user[0]->slug,
				'USER_EMAIL'	=> $user[0]->email,
				'USER_GROUP'	=> $user[0]->group_id
			);
		
			$this->session->set_userdata($session);
		
			redirect("/");
		}
	}
	
	public final function logout()
	{
		$this->session->sess_destroy();
		
		redirect("/");
	}
	
	public final function is_logged()
	{
		if($this->session->userdata('IS_LOGGED') !== 'true'){
			redirect("/auth/login");
		}
	}
	
	public final function is_active()
	{
		$query = $this->db->get_where($this->tablename, array(
			'id' => $this->session->userdata('USER_ID'),
			'is_active' => 1
		));
		
		if($query->num_rows() == 0){
			redirect('/auth/login');
		}
	}
	
	public final function can_access($controller, $method)
	{
		if($this->Parameter->get_by_key('use_permissions') == '0'){
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
			'print'		=> 'p_print'
		);
		
		$this->db->select($methods[$method]);
		
		$this->db->from('permission');
		$this->db->join('module', 'module.id = permission.module_id');
		$this->db->join('group', 'group.id = permission.group_id');
		
		$this->db->where('module.controller', $controller);
		$this->db->where('permission.'.$methods[$method], '1');
		$this->db->where('permission.deleted_at', '0000-00-00 00:00:00');
		
		$this->db->where('permission.group_id', $this->session->userdata('USER_GROUP'));
		
		$query = $this->db->get();
		
		if($query->num_rows() == 0){
			redirect("/auth/denied");
		}
	}
}

