<div class="container col-md-6" style="float:none;margin-top:50px;margin-left:auto;margin-right:auto;">
	<div class="panel panel-default">
		<div class="panel-heading">
			<span class="title">System Authentication</span>
		</div>
		
		<div class="panel-body">
			<form class="form-horizontal" method="POST">
				<div class="form-group">
					<label for="email" class="col-sm-2 control-label">Email</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="email" id="email" placeholder="Type your email">
					</div>
				</div>
			
				<div class="form-group">
					<label for="password" class="col-sm-2 control-label">Password</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" name="password" id="password" placeholder="Type your password">
					</div>
				</div>
				
				<div class="form-group">
					<label for="" class="col-sm-2 control-label">&nbsp</label>
					<div class="col-sm-10">
						<button type="submit" class="btn btn-default">Log In</button>
					</div>
				</div>
			</form>
		</div>
		
		<div class="panel-footer" style="text-align:right !important;">
			<small><?=$this->Parameter->_get('company_name')?></small>
		</div>
	</div>
</div>
