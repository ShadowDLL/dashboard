<?php if(strtolower($this->router->class) !== 'auth'){ ?>
	<nav class="navbar navbar-inverse navbar-static-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="<?=site_url()?>"><?=$this->Parameter->_get('system_title')?></a>
			</div>
		
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<?php if($this->data['menu']): ?>
						<?php foreach($this->data['menu'] as $menu): ?>
							<?php if(count($menu['items']) > 0){ ?>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?=$menu['name']?> <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<?php foreach($menu['items'] as $item): ?>
											<?php if($this->Permission->hasPermission($item->controller, 'index')){ ?>
												<li>
													<a href="<?=site_url()?><?=$item->controller?>">
														<span class="glyphicon glyphicon-euro" aria-hidden="true"></span>
														<span class="menu-spacer"><?=$item->name?></span>
													</a>
												</li>
											<?php } ?>
										<?php endforeach;  ?>
									</ul>
								</li>
							<?php } ?>
						<?php endforeach; ?>
					<?php endif; ?>
				
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">System Settings <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<?php if($this->Permission->hasPermission('users', 'index')){ ?>
								<li>
									<a href="<?=site_url()?>users">
										<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
										<span class="menu-spacer">Users</span>
									</a>
								</li>
							<?php } ?>
						
							<?php if($this->Permission->hasPermission('groups', 'index')){ ?>
								<li>
									<a href="<?=site_url()?>groups">
										<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
										<span class="menu-spacer">User Groups</span>
									</a>
								</li>
							<?php } ?>
						
							<?php if($this->Permission->hasPermission('menu', 'index')){ ?>
								<li>
									<a href="<?=site_url()?>menu">
										<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
										<span class="menu-spacer">System Menu</span>
									</a>
								</li>
							<?php } ?>
							
							<?php if($this->Permission->hasPermission('themes', 'index')){ ?>
								<li>
									<a href="<?=site_url()?>themes">
										<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
										<span class="menu-spacer">System Themes</span>
									</a>
								</li>
							<?php } ?>
						
							<li role="separator" class="divider"></li>
						
							<?php if($this->Permission->hasPermission('permissions', 'index')){ ?>
								<li>
									<a href="<?=site_url()?>permissions">
										<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
										<span class="menu-spacer">Modules & Permissions</span>
									</a>
								</li>
							<?php } ?>
							
							<?php if($this->Permission->hasPermission('installer', 'index')){ ?>
								<li>
									<a href="<?=site_url()?>installer">
										<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
										<span class="menu-spacer">Module Installer</span>
									</a>
								</li>
							<?php } ?>
						
							<li role="separator" class="divider"></li>
						
							<?php if($this->Permission->hasPermission('parameters', 'index')){ ?>
								<li>
									<a href="<?=site_url()?>parameters">
										<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
										<span class="menu-spacer">System Parameters</span>
									</a>
								</li>
							<?php } ?>
							
							<li role="separator" class="divider"></li>
						
							<?php if($this->Permission->hasPermission('logs', 'index')){ ?>
								<li>
									<a href="<?=site_url()?>logs">
										<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
										<span class="menu-spacer">System Log</span>
									</a>
								</li>
							<?php } ?>
						</ul>
					</li>
				</ul>
			
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">My Account <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="<?=site_url()?>minha_conta">My Account</a></li>
							<li><a href="<?=site_url()?>mudar_senha">Change Password</a></li>
							<li><a href="<?=site_url()?>historico">Action History</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="<?=site_url()?>logout">Sair</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</nav>
<?php } ?>
