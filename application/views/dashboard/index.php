<script src="<?=base_url()?>/resources/js/amcharts/amcharts.js"></script>
<script src="<?=base_url()?>/resources/js/amcharts/serial.js"></script>
<script src="<?=base_url()?>/resources/js/amcharts/plugins/dataloader/dataloader.min.js" type="text/javascript"></script>

<small>
	<div class="row">
		<div class="col-sm-12">
			<div class="panel panel-default">
				<div class="panel-heading">Monthly Access Log</div>
				<div class="panel-body" style="padding:0px;">
					<div id="chartdiv" class="chart" style="width: 100%; height: 250px;" title="getCurrentFeed"></div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-sm-4">
			<div class="panel panel-default">
				<div class="panel-heading">Monthly Access Log</div>
				<div class="panel-body" style="padding:0px;">
					<div id="chartdiv1" class="chart_module" style="width: 100%; height: 250px;" title="getCurrentFeed"></div>
				</div>
			</div>
		</div>
				
		<div class="col-sm-4">
			<div class="panel panel-default">
				<div class="panel-heading">Monthly Access Log</div>
				<div class="panel-body" style="padding:0px;">
					<div id="chartdiv2" class="chart_module" style="width: 100%; height: 250px;" title="getCurrentFeed"></div>
				</div>
			</div>
		</div>
				
		<div class="col-sm-4">
			<div class="panel panel-default">
				<div class="panel-heading">Monthly Access Log</div>
				<div class="panel-body" style="padding:0px;">
					<div id="chartdiv3" class="chart_module" style="width: 100%; height: 250px;" title="getCurrentFeed"></div>
				</div>
			</div>
		</div>
	</div>
</small>

<script type="text/javascript">
$(function(){
	$(".chart").each(function(){
		var dataUrl	= '<?=site_url()?>dashboard/';
		dataUrl		+= $(this).attr("title");
		
		if($(this).attr("title") == 'getFeed'){
			dataUrl += '/' + $(this).attr("data");
		}
		
		var chart = AmCharts.makeChart($(this).attr("id"), {
			"type": "serial",
			"theme": "light",
			"dataLoader": {
				"url": dataUrl
			},
			"color": "#FFFFFF",
			"startDuration": 0,
			"graphs": [ {
				"balloonText": "[[category]]: <b>[[value]]</b>",
				"fillAlphas": 0.8,
				"lineAlpha": 0.2,
				"type": "column",
				"valueField": "value",
				"lineColor": "#90C3D4",
				"fillColors": "#90C3D4"
			}],
			"rotate":false,
			"depth3D": 15,
			"angle": 20,
			"chartCursor": {
				"categoryBalloonEnabled": false,
				"cursorAlpha": 0,
				"zoomable": false
			},
			"categoryField": "url",
			"categoryAxis": {
				"gridPosition": "value",
				"gridAlpha": 0,
				"tickPosition": "value",
				"tickLength": 20
			},
			"export": {
				"enabled": true
			}
		});
	});
	
	$(".chart_module").each(function(){
		var dataUrl	= '<?=site_url()?>dashboard/';
		dataUrl		+= $(this).attr("title");
		
		if($(this).attr("title") == 'getFeed'){
			dataUrl += '/' + $(this).attr("data");
		}
		
		var chart = AmCharts.makeChart($(this).attr("id"), {
			"type": "serial",
			"theme": "light",
			"dataLoader": {
				"url": dataUrl
			},
			"color": "#FFFFFF",
			"startDuration": 0,
			"graphs": [ {
				"balloonText": "[[category]]: <b>[[value]]</b>",
				"fillAlphas": 0.8,
				"lineAlpha": 0.2,
				"type": "column",
				"valueField": "value"
			}],
			"rotate":true,
			"depth3D": 15,
			"angle": 20,
			"chartCursor": {
				"categoryBalloonEnabled": false,
				"cursorAlpha": 0,
				"zoomable": false
			},
			"categoryField": "url",
			"categoryAxis": {
				"gridPosition": "value",
				"gridAlpha": 0,
				"tickPosition": "value",
				"tickLength": 20
			},
			"export": {
				"enabled": true
			}
		});
	});
});
</script>
