<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard_model extends MY_Model{
	
	private $DB;
	
	function __construct()
	{
		parent::__construct();
		
		$this->DB = $this->load->database('log', TRUE);
		
		$this->tablename = 'access';
		$this->setFields();
		$this->setRelations();
	}
	
	public function getAccessFeed($startDate, $endDate)
	{
		try{
			$accessData = [];
			
			$this->DB->select("DATE_FORMAT(date, '%d') as date, CONCAT('/', controller) as url, COUNT(*) as total");
			$this->DB->from($this->tablename);
			$this->DB->where("date BETWEEN '{$startDate}' AND '{$endDate}'");
			$this->DB->group_by("controller");
			$this->DB->order_by("controller");
		
			foreach($this->DB->get()->result() as $row){
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
			
			$this->DB->select("DATE_FORMAT(date, '%d') as date, CONCAT('/', method) as method, COUNT(*) as total");
			$this->DB->from($this->tablename);
			$this->DB->group_by("method");
			$this->DB->order_by("COUNT(*) DESC");
		
			foreach($this->DB->get()->result() as $row){
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
