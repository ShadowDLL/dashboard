<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Access_model extends MY_Model{
	
	private $DB;
	
	function __construct()
	{
		parent::__construct();
		
		$this->tablename = 'access';
		$this->setFields();
		$this->setRelations();
		$this->labels = [
			'user_id'		=> 'User',
			'date'			=> 'Date',
			'controller'	=> 'Controller',
			'method'		=> 'Method',
			'post'			=> 'Posted Data'
		];
		
		$this->DB = $this->load->database('log', TRUE);
	}
	
	public function set($data=array())
	{
		$path		= $this->router->class.'/'.$this->router->method;
		$exclude	= array(
			'dashboard/index',
			'dashboard/getCurrentFeed',
			'logs/index'
		);
		
		if($this->session->userdata('IS_LOGGED') == 'true'){
			if(!in_array($path, $exclude)){
				$this->DB->insert($this->tablename, array(
					'user_id'		=> $this->session->userdata('USER_ID'),
					'date'			=> date('Y-m-d H:i:s'),
					'controller'	=> $this->router->class,
					'method'		=> $this->router->method,
					'origin'		=> json_encode($data),
					'post'			=> json_encode($_POST)
				));
			}
		}
	}
	
	public function all($start=0)
	{
		try {
			$select	= "";
			$limit	= $this->Parameter->_get('rows_per_page');
			
			if($start > 0){
				$start = ($start-1)*$limit;
			} else {
				$start = 0;
			}
	
			foreach($this->fields as $field){
				if(!in_array($field->Field, $this->exclude)){
					if(strstr($field->Type, 'date') || strstr($field->Type, 'timestamp')){
						$select .= "DATE_FORMAT({$this->tablename}.{$field->Field}, '%d/%m/%Y %H:%i:%s') as {$field->Field}, ";
					} else {
						$select .= "{$this->tablename}.{$field->Field}, ";
					}
				}
			}
	
			if($this->relations){
				foreach($this->relations as $k => $v){
					$select .= ", core.{$k}.name as {$k}_id";
				}
			}
	
			$this->DB->select($select);
			$this->DB->from($this->tablename);
	
			if($this->relations){
				foreach($this->relations as $k => $v){
					$this->DB->join('core.'.$k, "{$k}.id={$this->tablename}.{$k}_id", 'left');
				}
			}
		
			$this->DB->where("{$this->tablename}.deleted_at", '0000-00-00 00:00:00');
			
			if($this->order){
				$this->DB->order_by($this->tablename.'.'.$this->order);
			} else {
				$this->DB->order_by('id ASC');
			}
			
			$this->DB->limit($limit, $start);
		
			return $this->DB->get()->result();
		} catch (Exception $e){
			return $e->getMessage();
		}
	}
	
	public function total()
	{
		return $this->DB->count_all($this->tablename);
	}
}

