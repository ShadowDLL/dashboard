<style type="text/css">
.media{padding:5px;padding-top:10px;padding-left:10px;border-radius:3px;border:1px solid gray;}
.media:hover{color:white;background-color:#222;}
#modalPreview .modal-dialog, .modal-content{width:90% !important;height: 90% !important;}
#modalPreview .modal-body{height: calc(90% - 1px);overflow-y: hidden;padding:0px;padding-left:10px;padding-right:10px;}
#modalPreview .modal-body iframe{height: calc(100% - 1px) !important;}
</style>

<ul class="nav nav-tabs" role="tablist">
	<li role="presentation" class="active">
		<a href="#available" aria-controls="available" role="tab" data-toggle="tab">Available Modules</a>
	</li>
	<li role="presentation">
		<a href="#manual" aria-controls="manual" role="tab" data-toggle="tab">Manual Installation</a>
	</li>
</ul>

<div class="tab-content">
	<div role="tabpanel" class="tab-pane active" id="available">
		<div class="panel panel-default">
			<div class="panel-heading">
				<span class="title">Available Modules</span>
			</div>
			<div class="panel-body">
				<div>
					<p>You can install any of the modules below by clicking the "Install" button or you can view more information about it by clicking "Preview".</p>
				</div>
				
				<?php foreach($this->data['available_modules'] as $module): ?>
					<div class="media">
						<div class="media-left">
							<a href="<?=$module->owner->html_url?>" target="_blank">
								<img src="<?=$module->owner->avatar_url?>" alt="" width="40">
							</a>
						</div>
						<div class="media-body">
							<h2 class="media-heading"><?=parseFieldName($module->name)?> <small style="font-size:12px !important;">(<?=$module->full_name?>)</small></h2>
							<p style="font-size:12px !important;"><?=$module->description?></p>
							<p style="font-size:12px !important;">
								<a class="btn btn-sm btn-default btnPreview" style="font-size:12px !important;" data-toggle="modal" href="<?=site_url();?>installer/get_module/<?=$module->name?>" data-target="#modalPreview">Preview</a>
								<a href="<?=$module->name?>" class="btn btn-sm btn-default btnInstall" style="font-size:12px !important;">Install</a>
							</p>
						</div>
					</div>
				<?php endforeach; ?>
			</div>
		</div>
	</div>
	
	<div role="tabpanel" class="tab-pane" id="manual">
		<div class="panel panel-default">
			<div class="panel-heading">
				<span class="title">Manual Installation</span>
			</div>
			<div class="panel-body">
				<?php if(isset($this->data['message'])): ?>
					<div class="alert alert-<?=$this->data['message_type']?>" role="alert"><strong><?=$this->data['message']?></strong></div>
				<?php endif; ?>
		
				<div>
					<p>Enter the module URL you want to install and then click "Install Module".</p>
					<p>Installing modules replace any existing modules that meet the requirements of the new module. Be careful when using this feature!</p>
				</div>
		
				<form class="form-horizontal" method="POST">
					<div class="form-group">
						<label for="url" class="col-sm-2 control-label">GitHub URL</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="url" name="url">
						</div>
					</div>
			
					<div class="form-group">
						<label for="name" class="col-sm-2 control-label">Directory Name</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="name" name="name">
						</div>
					</div>
			
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-sm btn-default">Install Module</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<div class="modal fade bs-example-modal-lg" id="modalPreview" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h3 class="modal-title title">GitHub Preview</h3>
			</div>
			<div class="modal-body">
				<iframe src="" width="100%" frameborder="0" allowtransparency="true" style="zoom:90%;display:none;"></iframe>  
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="modalInstall" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h3 class="modal-title title">Module Installation</h3>
			</div>
			<div class="modal-body">
				<p>Are you sure you want to install this module?</p>
				<p>The installation may destroy some data if the module is already installed in the system.</p>
				<p>Do you wish to continue?</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-sm btn-default btnInstallModule" data-dismiss="modal">Continue</button>
				<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
$("#modalPreview").modal('hide');

$('#modalPreview').on('shown.bs.modal', function (e){
	$("#modalPreview iframe").show();
});

$('#modalPreview').on('hide.bs.modal', function (e){
	$("#modalPreview iframe").hide();
});

$(document).on('click', '.btnPreview', function(e){
	e.preventDefault();
	$("#modalPreview iframe").attr("src", $(this).attr('href')).hide();
});

$(document).on('click', '.btnInstall', function(e){
	e.preventDefault();
	
	$("#modalInstall").modal('show');
});

$(document).on('click', '.btnInstallModule', function(e){
	e.preventDefault();
	
	$.ajax({
		url: '<?=site_url()?>installer',
		type: 'POST',
		data: {
			url: '<?=$this->Parameter->_get("github_url");?>' + $(this).attr('href') + '/archive/master.zip',
			name: $(this).attr('href') + '-master'
		},
		success: function(data){
			alert('Module installed!');
		}
	});
	
	return false;
});
</script>
