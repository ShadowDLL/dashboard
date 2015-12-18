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
		<form class="form-horizontal" method="POST">
			<?php foreach($this->Model->getFields() as $field){ ?>
				<?php getHTMLControl($field, $this->Model->getLabel($field['name']), $row, $this->Model->relations);?>
			<?php } ?>
		</form>
	</div>
</div>

<?=getButtons($this->data['buttons'][$this->router->method]);?>
