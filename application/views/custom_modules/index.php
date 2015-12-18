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
		<table class="table table-bordered table-hover table-condensed table-responsive">
			<thead>
				<tr>
					<th>Módulo</th>
					<th>Controller</th>
					<th>Menu</th>
				</tr>
			</thead>
			
			<tbody>
				<?php foreach($dir = scandir(MODULEPATH) as $d): ?>
					<?php if($d !== '.' && $d !== '..'): ?>
						<tr>
							<td><?=ucfirst($d)?></td>
							<td><?=site_url()?><?=$d?></td>
							<td>
								<select name="menu_id" id="menu_id" class="form-control">
									<?php foreach($menu = $this->Menu->all() as $m): ?>
										<option value="<?=$m->id?>"><?=$m->name?></option>
									<?php endforeach; ?>
								</select>
							</th>
						</tr>
					<?php endif; ?>
				<?php endforeach; ?>
			</tbody>
		</table>
	</div>
</div>

<?=getButtons($this->data['buttons'][$this->router->method]);?>
