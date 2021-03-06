<input type="hidden" id="url" value="<?=site_url();?><?=$this->router->class;?>"/>

<div class="panel panel-default">
	<div class="panel-heading">
		<span class="title">
			<?=$this->data['module']?>
		</span>
	</div>
	<div class="panel-body">
		<div class="row">
			<?php foreach($this->data['themes'] as $theme): ?>
				<div class="col-md-2" style="text-align:center;">
					<div class="thumbnail">
						<img src="<?=site_url()?>resources/images/themes.png" width="80">
						<div class="caption">
							<h2 style="font-size:18px !important;"><?=$theme[0]?></h2>
							
							<?php if($theme[1] == $this->Parameter->_get('system_theme')){ ?>
								<button rel="<?=$theme[1]?>" class="btn btn-sm btn-danger" role="button">Current Theme</button>
							<?php } else { ?>
								<button rel="<?=$theme[1]?>" class="btn btn-sm btn-success btnChangeTheme" role="button">Apply This Theme</button>
							<?php } ?>
						</div>
					</div>
				</div>
			<?php endforeach; ?>
		</div>
	</div>
</div>
