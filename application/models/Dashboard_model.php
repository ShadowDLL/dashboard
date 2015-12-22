<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard_model extends MY_Model{
	
	function __construct()
	{
		parent::__construct();
		
		$this->tablename = 'access';
		$this->setFields();
		$this->setRelations();
	}
	
	public function getAccessFeed($startDate, $endDate)
	{
		try{
			$accessData = [];
			
			$this->db->select("DATE_FORMAT(date, '%d') as date, CONCAT('/', controller) as url, COUNT(*) as total");
			$this->db->from($this->tablename);
			$this->db->where("date BETWEEN '{$startDate}' AND '{$endDate}'");
			$this->db->group_by("controller");
			$this->db->order_by("controller");
		
			foreach($this->db->get()->result() as $row){
				$accessData[] = [
					'url'		=> $row->url,
					'category'	=> $row->date,
					'value'		=> $row->total
				];
			}
			
			return json_encode($accessData);
		} catch (Exception $e) {
			return $e->getMessage();
		}
	}
	
	public function getOperationsFeed()
	{
		try{
			$accessData = [];
			
			$this->db->select("DATE_FORMAT(date, '%d') as date, CONCAT('/', method) as method, COUNT(*) as total");
			$this->db->from($this->tablename);
			$this->db->group_by("method");
			$this->db->order_by("COUNT(*) DESC");
		
			foreach($this->db->get()->result() as $row){
				$accessData[] = [
					'method'	=> $row->method,
					'category'	=> $row->date,
					'value'		=> $row->total
				];
			}
			
			return json_encode($accessData);
		} catch (Exception $e) {
			return $e->getMessage();
		}
	}
}
