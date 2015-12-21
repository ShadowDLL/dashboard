<?php defined('BASEPATH') OR exit('No direct script access allowed');

/*
Retorna um controle HTML

	$field:		Dados do campo
	$label:		Label do campo
	$row:		Registro completo do banco de dados
	$relations:	Relacionamentos dos campos
*/
function getHTMLControl($field, $label=null, $row=array(), $relations=null){
	$template	= VIEWPATH.'controls/';			//Diretório de views
	$filetype	= getControlType($field);		//Tipo de controle
	$filename	= $template.$filetype.'.php';	//Nome do arquivo
	
	//Caso o arquivo exista no diretório especificado
	if(file_exists($filename)){
	
		//Carrega o arquivo na memória
		$html = file_get_contents($filename);
		
		//Insere o nome do controle
		$html = str_replace('[NAME]', $field['name'], $html);
		
		//Verifica se existem dados do banco
		if($row){
			$html = str_replace('[VALUE]', $row[0]->$field['name'], $html);
		} else {
			$html = str_replace('[VALUE]', '', $html);
		}
		
		//Verifica se o campo necessita de validação
		if($field['null'] == 'NO'){
			$html = str_replace('[REQUIRED]', 'required', $html);
		} else {
			$html = str_replace('[REQUIRED]', '', $html);
		}
		
		//Verifica se o campo possui um label definido no model
		if(!empty($label)){
			$html = str_replace('[LABEL]', $label, $html);
		} else {
			$html = str_replace('[LABEL]', parseFieldName($field['name']), $html);
		}
		
		//Caso o campo seja um SelectBox
		if($filetype == 'select'){
			$relation	= str_replace('_id', '', $field['name']);
			$options	= "<option value='0'>Selecione...</option>";
			
			foreach($relations[$relation] as $relation){
				if($row){
					if($relation->id == $row[0]->$field['name']){
						$options .= "<option selected='selected' value='{$relation->id}'>{$relation->name}</option>";
					} else {
						$options .= "<option value='{$relation->id}'>{$relation->name}</option>";
					}
				} else {
					$options .= "<option value='{$relation->id}'>{$relation->name}</option>";
				}
			}
			
			$html = str_replace('[OPTIONS]', $options, $html);
		}
		
		//Caso o campo seja um SelectYesNo
		if($filetype == 'select_yesno'){
			$relation	= str_replace('_id', '', $field['name']);
			$options	= "<option value='0'>Selecione...</option>";
			$data		= [0=>'Não', 1=>'Sim'];
			
			foreach($data as $k => $v){
				if($row){
					if($k == $row[0]->$field['name']){
						$options .= "<option selected='selected' value='{$k}'>{$v}</option>";
					} else {
						$options .= "<option value='{$k}'>{$v}</option>";
					}
				} else {
					$options .= "<option value='{$k}'>{$v}</option>";
				}
			}
			
			$html = str_replace('[OPTIONS]', $options, $html);
		}
	}
	
	//Imprime a saída em HTML
	print($html);
}

//Retorna o tipo de um controle
function getControlType($data){
	$field_type = '';
	
	switch(substr($data['type'], 0, 3)){
		case 'int':
			if($data['name'] == 'id'){
				$field_type = 'hidden';
			}
			
			if(strstr($data['name'], 'is_')){
				$field_type = 'select_yesno';
			}
			
			if(strstr($data['name'], 'p_')){
				$field_type = 'select_yesno';
			}
			
			if(strstr($data['name'], '_id')){
				$field_type = 'select';
			}
			
			break;
		
		case 'var':
			$field_type = 'text';
			break;
		
		case 'tim':
			$field_type = 'datepicker';
			break;
			
		case 'lon':
			$field_type = 'textarea';
			break;
			
		case 'dat':
			$field_type = 'text';
			break;
	}
	
	return $field_type;
}

//Formata um label a partir do nome de um campo
function parseFieldName($fieldName){
	$fieldName = str_replace('_id', ' ', $fieldName);
	$fieldName = str_replace('_', ' ', $fieldName);
	
	return ucwords($fieldName);
}

function getButtons($buttons, $disabled=array()){
	$ci		=& get_instance();
	$html	= '';
	$class	= $ci->router->class;
	
	$templates = [
		'add'		=> '<button type="button" class="btn btn-sm btn-default actionButton btnAdd" rel="'.site_url($class.'/insert').'">Add New</button>',
		'save'		=> '<button type="submit" class="btn btn-sm btn-default actionButton btnSave" rel="'.site_url($class).'">Save</button>',
		'delete'	=> '<button type="button" class="btn btn-sm btn-default actionButton btnDelete" rel="'.site_url($class).'">Delete</button>',
		'back'		=> '<button type="button" class="btn btn-sm btn-default actionButton btnBack" rel="'.site_url($class).'">Back</button>',
		'cancel'	=> '<button type="button" class="btn btn-sm btn-default actionButton btnCancel" rel="'.site_url($class).'">Cancel</button>',
		'export'	=> '<button type="button" class="btn btn-sm btn-default actionButton btnExport" rel="'.site_url($class.'/export').'">Export</button>',
		'print'		=> '<button type="button" class="btn btn-sm btn-default actionButton btnPrint" rel="'.site_url($class.'/print').'">Print</button>'
	];
	
	foreach($buttons as $button){
		if(count($disabled) > 0){
			if(!in_array($button, $disabled)){
				$html .= $templates[$button];
			}
		} else {
			$html .= $templates[$button];
		}
	}
	
	return $html;
}

function delete_directory($dir){
	if(is_dir($dir)){
		$objects = scandir($dir);
		
		foreach($objects as $object){
			if($object != "." && $object != ".."){
				if(filetype($dir."/".$object) == "dir"){
					delete_directory($dir."/".$object);
				} else { 
					unlink($dir."/".$object);
				}
			}
		}
		
		reset($objects);
		rmdir($dir);
	}
}
