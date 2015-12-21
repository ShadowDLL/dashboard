<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Installer extends MY_Controller
{
	function __construct()
	{
		parent::__construct('module');
		
		$this->data['module'] = 'Module Installer';
	}
	
	public function index($page=0)
	{
		if($_POST){
			if(!is_dir(MODULEPATH)){
				mkdir(MODULEPATH, 0777);
			}
			
			if($this->Parameter->_get('network_proxy') !== ''){
				$context = stream_context_create(array(
					'http' => array(
						'proxy' => 'tcp://'.$this->Parameter->_get('network_proxy')
					),
				));
				
				file_put_contents(MODULEPATH."/module.zip", fopen($_POST['url'], 'r', false, $context));
			} else {
				file_put_contents(MODULEPATH."/module.zip", fopen($_POST['url'], 'r'));
			}

			$zip = new ZipArchive;
			
			if ($zip->open(MODULEPATH.'/module.zip') === TRUE) {
				$zip->extractTo(MODULEPATH);
				$zip->close();
				
				$name = explode('-', $_POST['name']);
				
				chmod(MODULEPATH.'/module.zip', 0777);
				
				if(is_dir(MODULEPATH.'/'.$name[0])){
					delete_directory(MODULEPATH.'/'.$_POST['name']);
				} else {
					rename(MODULEPATH.'/'.$_POST['name'], MODULEPATH.'/'.$name[0]);
				}
				
				if(file_exists(MODULEPATH.'/'.$name[0].'/database.sql')){
					$queries = file(MODULEPATH.'/'.$name[0].'/database.sql');
					
					for($i=0;$i<count($queries);$i++){
						$this->db->query($queries[$i]);
					}
				}
				
				$this->data['message_type']	= "success";
				$this->data['message']		= 'Module Installed into "'.MODULEPATH.'/'.$name[0].'"';
				
				unlink(MODULEPATH.'/module.zip');
			}
		}
		
		$this->render();
	}
	
	public function list_modules()
	{
		$git = "https://api.github.com/users/brajola/repos";
		
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL,$git);
		curl_setopt($ch, CURLOPT_HTTPPROXYTUNNEL, 1);
		curl_setopt($ch, CURLOPT_PROXY, '10.11.25.2:3128');
		curl_setopt($ch,CURLOPT_USERAGENT,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.13) Gecko/20080311 Firefox/2.0.0.13');
		curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_CUSTOMREQUEST,'GET');
		curl_setopt ($ch, CURLOPT_HEADER, 1);
		$content = curl_exec($ch);
		curl_close($ch);

		//$content = substr($content, strpos($content, '['), strlen($content));
		
		print($content);
		
		die();
	}
}
