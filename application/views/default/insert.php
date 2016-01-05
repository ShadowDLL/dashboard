<div class="panel panel-default">
	<div class="panel-heading">
		<span class="title">
			<?=$this->data['module']?>
		</span>
		<span> | </span>
		<span class="small">
			<small><?=$this->data['title'][$this->router->method]?></small>
		</span>
	</div>
	<div class="panel-body">
		<form class="form-horizontal" method="POST" enctype="multipart/form-data" action="<?=site_url($this->router->class.'/'.$this->router->method);?>">
			<fieldset>
				<?php foreach($this->Model->getFields() as $field){ ?>
					<?php getHTMLControl($field, $this->Model->getLabel($field['name']), array(), $this->Model->relations);?>
				<?php } ?>
			</fieldset>
		</form>
	</div>
</div>

<?=getButtons($this->data['buttons'][$this->router->method]);?>
