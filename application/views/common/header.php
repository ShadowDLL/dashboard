<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		
		<title><?=$this->Parameter->_get('system_title')?></title>

		<!-- Bootstrap -->
		<link href="<?=base_url()?>resources/css/bootstrap.min.css" rel="stylesheet">
		<link href="<?=base_url()?>resources/themes/<?=$this->Parameter->_get('system_theme')?>.css" rel="stylesheet">
		<link href="<?=base_url()?>resources/css/bootstrap-datepicker.min.css" rel="stylesheet">
		
		<link href="<?=base_url()?>resources/css/styles.css" rel="stylesheet">

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
		
		<script src="<?=base_url()?>resources/js/jquery-1.11.3.min.js"></script>
		<script src="<?=base_url()?>resources/js/bootstrap.min.js"></script>
		<script src="<?=base_url()?>resources/js/bootstrap-datepicker.min.js"></script>
		<script src="<?=base_url()?>resources/js/jquery.mask.min.js"></script>
		
		<script src="<?=base_url()?>resources/js/scripts.js"></script>
		
		<style type="text/css">
		*{font-size:<?=$this->Parameter->_get('system_font_size')?>px !important;}
		</style>
	</head>
	<body style="margin:0px;">
		<?php $this->load->view('common/menu');?>
		
		<div class="container-fluid">
