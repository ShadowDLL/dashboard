<?php defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Controller extends MX_Controller {

	public $data;

	function __construct($model)
	{
		parent::__construct();
		
		$this->load->model($model.'_model', 'Model');
		
		foreach($this->Menu->all() as $menu){
			$this->data['menu'][] = [
				'name'	=> $menu->name,
				'items'	=> $this->Module->getByMenu($menu->id)
			];
		}
		
		$this->data['title'] = [
			'index'		=> 'Record List',
			'insert'	=> 'Add New Record',
			'update'	=> 'Update Record',
			'delete'	=> 'Delete Record',
			'export'	=> 'Export Records',
			'_print'	=> 'Print Records'
		];
		
		$this->data['buttons'] = [
			'index'		=> ['add','export','print'],
			'insert'	=> ['save','cancel'],
			'update'	=> ['save','delete','cancel'],
			'denied'	=> ['back']
		];
	}

	protected function render($html=true)
	{
		if($html)
		{
			$this->load->view('common/header', $this->data);
		}
		
		if(isset($this->data['view_path'])){
			$view = $this->data['view_path'].'/'.$this->router->method;
		} else {
			$view = strtolower($this->router->class).'/'.$this->router->method;
		}
		
		$this->load->view($view, $this->data);
		
		if($html)
		{
			$this->load->view('common/footer', $this->data);
		}
	}
	
	private function methodAllowed()
	{
		if(isset($this->data['disabled'])){
			if(in_array($this->router->method, $this->data['disabled'])){
				redirect('/');
			}
		}
	}

	public function index($page=0)
	{
		$this->methodAllowed();
		
		$this->data['rows'] = $this->Model->all($page);
		
		$config['base_url']				= site_url().$this->router->class;
		$config['total_rows']			= $this->Model->total();
		$config['per_page']				= $this->Parameter->_get('rows_per_page');
		
		$config['first_link']			= 'First';
		$config['last_link']			= 'Last';
		
		$config['prev_link']			= '«';
		$config['next_link']			= '»';
		
		$config['full_tag_open']		= '<ul class="pagination">';
		$config['full_tag_close']		= '</ul>';
		
		$config['first_tag_open']		= '<li>';
		$config['first_tag_close']		= '</li>';
		
		$config['last_tag_open']		= '<li>';
		$config['last_tag_close']		= '</li>';
		
		$config['next_tag_open']		= '<li>';
		$config['next_tag_close']		= '</li>';
		
		$config['prev_tag_open']		= '<li>';
		$config['prev_tag_close']		= '</li>';
		
		$config['cur_tag_open']			= '<li class="active"><a href="#">';
		$config['cur_tag_close']		= '</a></li>';
		
		$config['num_tag_open']			= '<li>';
		$config['num_tag_close']		= '</li>';

		$config['use_page_numbers']		= TRUE;
		$config['num_links']			= 10;
		//$config['display_pages']		= FALSE;
				
		$this->pagination->initialize($config);
		
		$this->render();
	}
	
	public function insert()
	{
		$this->methodAllowed();
		
		if($_POST){
			unset($_POST['id']);
			
			if($_FILES){
				$this->Model->insert_attachment();
			}
			
			$this->Model->insert($_POST);
			
			redirect($this->router->class);
		}
		
		$this->render();
	}
	
	public function update($id)
	{
		$this->methodAllowed();
		
		if($_POST){
			if($_FILES){
				$this->Model->insert_attachment();
			}
			
			$this->Model->update($_POST['id'], $_POST);
			
			redirect($this->router->class);
		}
		
		$this->data['id']	= $id;
		$this->data['row']	= $this->Model->get($id);
		$this->render();
	}
	
	public function delete($id)
	{
		$this->methodAllowed();
		
		unlink(UPLOADPATH.'/'.$this->Model->getAttachment($id));
		
		return $this->Model->delete($id);
	}
	
	public function search()
	{
		$this->methodAllowed();
		
		$this->render();
	}
	
	public function export()
	{
		$this->methodAllowed();
		
		$this->data['rows'] = $this->Model->all();
		
		$this->render();
	}
	
	public function _print()
	{
		$this->methodAllowed();
		
		$this->render();
	}
}

