<div class="panel panel-default">
	<div class="panel-heading">
		<span class="title">My Account</span>
	</div>
	<div class="panel-body">
		<div>
			<div class="col-sm-2">
				<img src="<?=site_url();?>uploads/<?=$this->data['my_account'][0]->attachment?>" width="180" />
			</div>
			<div class="col-sm-10">
				<form class="form-horizontal" method="POST" enctype="multipart/form-data" action="<?=site_url($this->router->class.'/'.$this->router->method);?>">
					<?php foreach($this->Model->getFields() as $field){ ?>
						<?php getHTMLControl($field, $this->Model->getLabel($field['name']), $this->data['my_account'], $this->Model->relations);?>
					<?php } ?>
					
					<?=getButtons($this->data['buttons'][$this->router->method]);?>
				</form>
			</div>
		</div>
	</div>
</div>
