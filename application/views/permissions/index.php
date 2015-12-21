<input type="hidden" id="url" value="<?=site_url();?><?=$this->router->class;?>"/>

<div class="panel panel-default">
	<div class="panel-heading">
		<span class="title">
			<?=$this->data['module']?>
		</span>
	</div>
	<div class="panel-body">
		<div id="tabs">
			<ul class="nav nav-tabs" role="tablist">
				<?php foreach($this->data['groups'] as $group): ?>
					<li role="presentation">
						<a href="#<?=$group->id?>" aria-controls="home" role="tab" data-toggle="tab"><?=$group->name?></a>
					</li>
				<?php endforeach; ?>
			</ul>

			<div class="tab-content">
				<?php foreach($this->data['groups'] as $group): ?>
					<div role="tabpanel" class="tab-pane" id="<?=$group->id?>" style="padding:10px;">
						<table class="table table-bordered table-hover table-condensed table-responsive">
							<thead>
								<tr>
									<th>Module</th>
									<th>URL</th>
									<th>System Menu</th>
									
									<th style="text-align:center;">Quick Operation</th>
											
									<th style="text-align:center;">Read</th>
									<th style="text-align:center;">Insert</th>
									<th style="text-align:center;">Update</th>
									<th style="text-align:center;">Delete</th>
									<th style="text-align:center;">Export</th>
									<th style="text-align:center;">Search</th>
									<th style="text-align:center;">Print</th>
								</tr>
							</thead>
			
							<tbody>
								<?php if(isset($this->data['modules'])): ?>
									<?php foreach($this->data['modules'] as $module): ?>
										<?php if($module !== '.' && $module !== '..'): ?>
											<?php
											$p_index	= $this->Model->isPermission($module, $group->id, 'p_index');
											$p_insert	= $this->Model->isPermission($module, $group->id, 'p_insert');
											$p_update	= $this->Model->isPermission($module, $group->id, 'p_update');
											$p_delete	= $this->Model->isPermission($module, $group->id, 'p_delete');
											$p_export	= $this->Model->isPermission($module, $group->id, 'p_export');
											$p_print	= $this->Model->isPermission($module, $group->id, 'p_print');
											$p_search	= $this->Model->isPermission($module, $group->id, 'p_search');
											?>
											
											<tr>
												<td width="200"><?=parseFieldName($module)?></td>
												<td><?=site_url()?><?=$module?></td>
												<td>
													<select name="menu_id[]" class="form-control menu_assignment" rel="<?=$module?>" style="height:auto;padding:0px;">
														<option value="0" style="padding:0px;">None (Not assigned)</option>
														<?php foreach($menu = $this->Menu->all() as $m): ?>
															<?php if($this->Module->exists($m->id, $module)){ ?>
																<option selected="selected" value="<?=$m->id?>" style="padding:0px;"><?=$m->name?></option>
															<?php } else { ?>
																<option value="<?=$m->id?>" style="padding:0px;"><?=$m->name?></option>
															<?php } ?>
														<?php endforeach; ?>
													</select>
												</td>

												<td style="width:200px;text-align:center;">
													<button id="<?=$module?>_<?=$group->id?>_yes" style="font-size:11px !important;" class="btn btn-sm btn-success btnYesToAll" rel="<?=$module?>|<?=$group->id?>" data-toggle="modal" data-target="#modalYesToAll">Yes to All</button>
													<button id="<?=$module?>_<?=$group->id?>_no" style="font-size:11px !important;" class="btn btn-sm btn-danger btnNoToAll" rel="<?=$module?>|<?=$group->id?>" data-toggle="modal" data-target="#modalNoToAll">No to All</button>
												</td>

												<!-- Index -->
												<td style="width:50px;text-align:center;">
													<?php if($p_index){ ?>
														<button id="<?=$module?>_<?=$group->id?>_index_remove" class="btn btn-sm btn-success btnRemovePermission <?=$module?>_<?=$group->id?>" rel="<?=$module?>|<?=$group->id?>|p_index">Yes</button>
													<?php } else { ?>
														<button id="<?=$module?>_<?=$group->id?>_index_add" class="btn btn-sm btn-danger btnAddPermission <?=$module?>_<?=$group->id?>" rel="<?=$module?>|<?=$group->id?>|p_index">No</button>
													<?php } ?>
												</td>
												
												<!-- Insert -->
												<td style="width:50px;text-align:center;">
													<?php if($p_insert){ ?>
														<button id="<?=$module?>_<?=$group->id?>_insert_remove" class="btn btn-sm btn-success btnRemovePermission <?=$module?>_<?=$group->id?>" rel="<?=$module?>|<?=$group->id?>|p_insert">Yes</button>
													<?php } else { ?>
														<button id="<?=$module?>_<?=$group->id?>_insert_add" class="btn btn-sm btn-danger btnAddPermission <?=$module?>_<?=$group->id?>" rel="<?=$module?>|<?=$group->id?>|p_insert">No</button>
													<?php } ?>
												</td>
												
												<!-- Update -->
												<td style="width:50px;text-align:center;">
													<?php if($p_update){ ?>
														<button id="<?=$module?>_<?=$group->id?>_update_remove" class="btn btn-sm btn-success btnRemovePermission <?=$module?>_<?=$group->id?>" rel="<?=$module?>|<?=$group->id?>|p_update">Yes</button>
													<?php } else { ?>
														<button id="<?=$module?>_<?=$group->id?>_update_add" class="btn btn-sm btn-danger btnAddPermission <?=$module?>_<?=$group->id?>" rel="<?=$module?>|<?=$group->id?>|p_update">No</button>
													<?php } ?>
												</td>
												
												<!-- Delete -->
												<td style="width:50px;text-align:center;">
													<?php if($p_delete){ ?>
														<button id="<?=$module?>_<?=$group->id?>_delete_remove" class="btn btn-sm btn-success btnRemovePermission <?=$module?>_<?=$group->id?>" rel="<?=$module?>|<?=$group->id?>|p_delete">Yes</button>
													<?php } else { ?>
														<button id="<?=$module?>_<?=$group->id?>_delete_add" class="btn btn-sm btn-danger btnAddPermission <?=$module?>_<?=$group->id?>" rel="<?=$module?>|<?=$group->id?>|p_delete">No</button>
													<?php } ?>
												</td>
												
												<!-- Export -->
												<td style="width:50px;text-align:center;">
													<?php if($p_export){ ?>
														<button id="<?=$module?>_<?=$group->id?>_export_remove" class="btn btn-sm btn-success btnRemovePermission <?=$module?>_<?=$group->id?>" rel="<?=$module?>|<?=$group->id?>|p_export">Yes</button>
													<?php } else { ?>
														<button id="<?=$module?>_<?=$group->id?>_export_add" class="btn btn-sm btn-danger btnAddPermission <?=$module?>_<?=$group->id?>" rel="<?=$module?>|<?=$group->id?>|p_export">No</button>
													<?php } ?>
												</td>
												
												<!-- Print -->
												<td style="width:50px;text-align:center;">
													<?php if($p_print){ ?>
														<button id="<?=$module?>_<?=$group->id?>_print_remove" class="btn btn-sm btn-success btnRemovePermission <?=$module?>_<?=$group->id?>" rel="<?=$module?>|<?=$group->id?>|p_print">Yes</button>
													<?php } else { ?>
														<button id="<?=$module?>_<?=$group->id?>_print_add" class="btn btn-sm btn-danger btnAddPermission <?=$module?>_<?=$group->id?>" rel="<?=$module?>|<?=$group->id?>|p_print">No</button>
													<?php } ?>
												</td>
												
												<!-- Search -->
												<td style="width:50px;text-align:center;">
													<?php if($p_search){ ?>
														<button id="<?=$module?>_<?=$group->id?>_search_remove" class="btn btn-sm btn-success btnRemovePermission <?=$module?>_<?=$group->id?>" rel="<?=$module?>|<?=$group->id?>|p_search">Yes</button>
													<?php } else { ?>
														<button id="<?=$module?>_<?=$group->id?>_search_add" class="btn btn-sm btn-danger btnAddPermission <?=$module?>_<?=$group->id?>" rel="<?=$module?>|<?=$group->id?>|p_search">No</button>
													<?php } ?>
												</td>
											</tr>
										<?php endif; ?>
									<?php endforeach; ?>
								</tbody>
							<?php endif; ?>
						</table>
					</div>
				<?php endforeach; ?>
			</div>
		</div>		
	</div>
</div>

<?=getButtons($this->data['buttons'][$this->router->method]);?>

<div class="modal fade" tabindex="-1" role="dialog" id="modalYesToAll">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title">System Question</h4>
			</div>
	
			<div class="modal-body">
				<p>Are you sure you want to allow all actions for this module?</p>
				<input type="hidden" name="txtContentYesToAll" id="txtContentYesToAll" value="" />
			</div>
	
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
				<button type="button" class="btn btn-danger btnConfirmYesToAll">Confirm Action</button>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" tabindex="-1" role="dialog" id="modalNoToAll">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title">System Question</h4>
			</div>
	
			<div class="modal-body">
				<p>Are you sure you want to block all actions for this module?</p>
				<input type="hidden" name="txtContentNoToAll" id="txtContentNoToAll" value="" />
			</div>
	
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
				<button type="button" class="btn btn-danger btnConfirmNoToAll">Confirm Action</button>
			</div>
		</div>
	</div>
</div>
