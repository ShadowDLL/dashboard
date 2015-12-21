<div class="panel panel-default">
	<div class="panel-heading">
		<span class="title">
			<?=$this->data['module']?>
		</span>
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
