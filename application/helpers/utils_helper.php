<?php defined('BASEPATH') OR exit('No direct script access allowed');

function getUrl($url)
{
	$ci =& get_instance();
	$ch = curl_init();
	
	curl_setopt($ch, CURLOPT_URL, $ci->Parameter->_get('github_url').$url);
	
	if(!empty($ci->Parameter->_get('network_proxy'))){
		curl_setopt($ch, CURLOPT_HTTPPROXYTUNNEL, 1);
		curl_setopt($ch, CURLOPT_PROXY, $ci->Parameter->_get('network_proxy'));
	}
	
	curl_setopt($ch, CURLOPT_USERAGENT,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.13) Gecko/20080311 Firefox/2.0.0.13');
	curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($ch, CURLOPT_CUSTOMREQUEST,'GET');
	curl_setopt ($ch, CURLOPT_HEADER, 0);
	
	$content = curl_exec($ch);
	
	curl_close($ch);
		
	return $content;
}
