<?php defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Model extends CI_Model{
	
	public $tablename;	//Nome da tabela
	public $fields;		//Campos da tabela
	public $exclude;	//Campos excluídos
	public $labels;		//Labels dos campos
	public $relations;	//Relacionamentos da tabela
	public $specials;	//Campos com tratamento especial
	public $order;		//Order By da Query all()
	public $hasMany;	//Tabelas secundárias
	
	/**
	 * Construção do model padrão
	 *
	 * @author Fábio Rodriguez <brajola@gmail.com>
	 */
	function __construct()
	{
		//Construção do parent
		parent::__construct();
		
		//Campos de controle
		$this->exclude = [
			'created_at',
			'created_by',
			'updated_at',
			'updated_by',
			'deleted_at',
			'deleted_by'
		];
	}
	
	/**
	 * Seta todos os campos da tabela no model corrente
	 *
	 * @author Fábio Rodriguez <brajola@gmail.com>
	 */
	public function setFields()
	{
		try {
			$this->fields = $this->db->query("SHOW FIELDS FROM `{$this->tablename}`")->result();
		} catch (Exception $e){
			return $e->getMessage();
		}
	}
	
	/**
	 * Retorna todos os campos do model corrente tratando os excluídos
	 *
	 * @author Fábio Rodriguez <brajola@gmail.com>
	 */
	public function getFields()
	{
		try {
			$result = [];
		
			foreach($this->fields as $field){
				if(!in_array($field->Field, $this->exclude)){
					$result[] = [
						'name' => $field->Field, 
						'type' => $field->Type,
						'null' => $field->Null
					];
				}
			}
		
			return $result;
		} catch (Exception $e){
			return $e->getMessage();
		}
	}
	
	/**
	 * Seta os relacionamentos da tabela do model corrente
	 *
	 * @author Fábio Rodriguez <brajola@gmail.com>
	 */
	public function setRelations()
	{
		try {
			foreach($this->fields as $field){
				if(strstr($field->Field, '_id')){
					$tablename = str_replace('_id', '', $field->Field);
				
					$this->relations[$tablename] = $this->db->get_where($tablename, array("deleted_at" => '0000-00-00 00:00:00'))->result();
				}
			}
		} catch (Exception $e){
			return $e->getMessage();
		}
	}
	
	/**
	 * Retorna um label de um campo
	 *
	 * @author Fábio Rodriguez <brajola@gmail.com>
	 * @param $field string
	 */
	public function getLabel($field)
	{
		try {
			if(isset($this->labels[$field])){
				return $this->labels[$field];
			}
		
			return false;
		} catch (Exception $e){
			return $e->getMessage();
		}
	}
	
	/**
	 * Retorna o total de registros
	 *
	 * @author Fábio Rodriguez <brajola@gmail.com>
	 */
	public function total()
	{
		return $this->db->count_all($this->tablename);
	}
	
	/**
	 * Retorna todos os registros
	 *
	 * @author Fábio Rodriguez <brajola@gmail.com>
	 */
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
					$select .= ", {$k}.name as {$k}_id";
				}
			}
	
			$this->db->select($select);
			$this->db->from($this->tablename);
	
			if($this->relations){
				foreach($this->relations as $k => $v){
					$this->db->join($k, "{$k}.id={$this->tablename}.{$k}_id", 'left');
				}
			}
		
			$this->db->where("{$this->tablename}.deleted_at", '0000-00-00 00:00:00');
			
			if($this->order){
				$this->db->order_by($this->tablename.'.'.$this->order);
			} else {
				$this->db->order_by('id ASC');
			}
			
			$this->db->limit($limit, $start);
		
			return $this->db->get()->result();
		} catch (Exception $e){
			return $e->getMessage();
		}
	}
	
	/**
	 * Retorna um registro por Id
	 *
	 * @author Fábio Rodriguez <brajola@gmail.com>
	 * @param $id integer
	 */
	public function get($id)
	{
		try {
			$this->db->select("*");
			$this->db->from($this->tablename);
	
			$this->db->where("{$this->tablename}.id", $id);
			$this->db->where("{$this->tablename}.deleted_at", '0000-00-00 00:00:00');
		
			return $this->db->get()->result();
		} catch (Exception $e){
			return $e->getMessage();
		}
	}
	
	/**
	 * Retorna os registros por comparação de chave e valor
	 *
	 * @author Fábio Rodriguez <brajola@gmail.com>
	 * @param $field string
	 * @param $value string
	 */
	public function by($field, $value)
	{
		try {
			$select = "";
	
			foreach($this->fields as $field){
				if(!in_array($field->Field, $this->exclude)){
					$select .= "{$this->tablename}.{$field->Field}, ";
				}
			}
	
			foreach($this->relations as $k => $v){
				$select .= ", {$k}.name as {$k}_id";
			}
	
			$this->db->select($select);
			$this->db->from($this->tablename);
	
			foreach($this->relations as $k => $v){
				$this->db->join($k, "{$k}.id={$this->tablename}.{$k}_id");
			}
		
			$this->db->where("{$this->tablename}.{$field}", $value);
			$this->db->where("{$this->tablename}.deleted_at", '0000-00-00 00:00:00');
		
			return $this->db->get()->result();
		} catch (Exception $e){
			return $e->getMessage();
		}
	}
	
	/**
	 * Método de inserção de Registros
	 *
	 * @author Fábio Rodriguez <brajola@gmail.com>
	 * @param $data array
	 */
	public function insert($data)
	{
		try {
			return $this->db->insert($this->tablename, $data);
		} catch (Exception $e){
			return $e->getMessage();
		}
	}
	
	/**
	 * Método de Atualização de Registros
	 *
	 * @author Fábio Rodriguez <brajola@gmail.com>
	 * @param $id integer
	 * @param $data array
	 */
	public function update($id, $data)
	{
		try {
			if($this->specials){
				foreach($_POST as $k => $v){
					if($this->router->method == $k){
						$_POST[$k] = call_user_func($this->specials[$k], $v);
					}
				}
			}
			
			$data['updated_at'] = date('Y-m-d H:i:s');
			$data['updated_by'] = 1;
			
			$this->db->where('id', $id);
			return $this->db->update($this->tablename, $data);
		} catch (Exception $e){
			return $e->getMessage();
		}
	}
	
	/**
	 * Método de Exclusão de Registros
	 *
	 * @author Fábio Rodriguez <brajola@gmail.com>
	 * @param $id integer
	 */
	public function delete($id)
	{
		try {
			$data = [
				'deleted_at'	=> date('Y-m-d H:i:s'),
				'deleted_by'	=> 1
			];
			
			foreach($this->fields as $field){
				if($field->Field == 'is_active'){
					$data['is_active'] = 0;
				}
			}
			
			if($this->Parameter->_get('physical_exclusion') == 'true'){
				return $this->db->delete($this->tablename, array('id' => $id));
			} else {
				return $this->db->update($this->tablename, $data, array('id' => $id));
			}
		} catch (Exception $e){
			return $e->getMessage();
		}
	}
	
	/**
	 * Método de inserção de imagens e anexos
	 *
	 * @author Fábio Rodriguez <brajola@gmail.com>
	 * @param $data array
	 */
	public function insert_attachment()
	{
		try {
			foreach($_FILES as $k => $v){
				$filename = getRandomHash() . '.' . getFileExtension($v['name']);
				
				if(!move_uploaded_file($v['tmp_name'], UPLOADPATH.'/'.$filename)){
					throw new Exception("Error uploading file: ".$v['name']);
				}
				
				$_POST[$k] = $filename;
			}
			
			return true;
		} catch (Exception $e){
			return $e->getMessage();
		}
	}
	
	public function getAttachment($id)
	{
		return $this->db->get_where($this->tablename, array('id' => $id))->result()[0]->attachment;
	}
}

