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
		<?php if($rows){ ?>
			<table class="table table-bordered table-hover table-condensed table-responsive">
				<thead>
					<tr>
						<?php foreach($this->Model->fields as $field): ?>
							<?php if(!in_array($field->Field, $this->Model->exclude)){ ?>
								<th><?=@$this->Model->labels[$field->Field]?></th>
							<?php } ?>
						<?php endforeach; ?>
					</tr>
				</thead>
			
				<tbody>
					<?php foreach($rows as $row): ?>
						<tr class="updateRecord" rel="<?=site_url($this->router->class.'/update/'.$row->id)?>">
							<?php foreach($this->Model->fields as $field): ?>
								<?php if(!in_array($field->Field, $this->Model->exclude)){ ?>
									<?php if(strlen($row->{$field->Field}) < 50){ ?>
										<td nowrap><?=$row->{$field->Field}?></td>
									<?php } else { ?>
										<td><?=$row->{$field->Field}?></td>
									<?php } ?>
								<?php } ?>
							<?php endforeach; ?>
						</tr>
					<?php endforeach; ?>
				</tbody>
			</table>
		<?php } else { ?>
			<h5>Sorry, there's no data in here!'</h5>
		<?php } ?>
	</div>
</div>
<script type="text/javascript">window.print();</script>
