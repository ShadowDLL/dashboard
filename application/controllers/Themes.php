<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Themes extends MY_Controller
{
	function __construct()
	{
		parent::__construct('parameter');
		
		$this->data['module'] = 'System Themes';
	}
	
	public function index($page=0)
	{
		$themes = scandir(APPPATH.'../resources/themes');
		
		foreach($themes as $theme){
			if($theme !== '.' && $theme !== '..'){
				$this->data['themes'][] = array(
					parseFieldName(str_replace('.css', '', $theme)),
					str_replace('.css', '', $theme)
				);
			}
		}
		
		$this->render();
	}
	
	public function changeSystemTheme()
	{
		if($_POST){
			$this->Parameter->setNewTheme($_POST['theme']);
		}
		
		die();
	}
}
