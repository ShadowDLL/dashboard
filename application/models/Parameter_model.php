<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Parameter_model extends MY_Model{
	
	function __construct()
	{
		parent::__construct();
		
		$this->tablename = 'parameter';
		$this->setFields();
		$this->setRelations();
		$this->labels = [
			'key'	=> 'Key',
			'value'	=> 'Value'
		];
	}
	
	public function _get($key)
	{
		try {
			$this->db->select("value");
			$this->db->from($this->tablename);
	
			$this->db->where("{$this->tablename}.key", $key);
			$this->db->where("{$this->tablename}.deleted_at", '0000-00-00 00:00:00');
		
			$data = $this->db->get()->result();
			
			if(count($data) == 0){
				throw new Exception("No Parameters Found!");
			}
			
			return $data[0]->value;
		} catch (Exception $e){
			return $e->getMessage();
		}
	}
}

