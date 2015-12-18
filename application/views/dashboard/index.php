<script src="<?=base_url()?>/resources/js/amcharts/amcharts.js"></script>
<script src="<?=base_url()?>/resources/js/amcharts/serial.js"></script>
<script src="<?=base_url()?>/resources/js/amcharts/plugins/dataloader/dataloader.min.js" type="text/javascript"></script>

<small>
	<div class="panel panel-default">
		<div class="panel-heading">Monthly Access Log</div>
		<div class="panel-body" style="padding:0px;">
			<div id="chartdiv" class="chart" style="width: 100%; height: 250px;" rel="#90C3D4" title="getCurrentFeed"></div>
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
			"rotate": true,
			"color": "#FFFFFF",
			"dataLoader": {
				"url": dataUrl
			},
			"addClassNames": true,
			"valueAxes": [{
				"gridColor": "#FFFFFF",
				"gridAlpha": 0.2,
				"dashLength": 0
			}],
			"depth3D": 5,
			"angle": 20,
			"gridAboveGraphs": true,
			"dataDateFormat": "YYYY-MM-DD",
			"graphs": [{
				"balloonText": "[[resource]]: <b>[[value]]</b>",
				"fillAlphas": 0.8,
				"lineAlpha": 0.2,
				"type": "column",
				"valueField": "value",
				"fillAlphas": 1,
				"lineColor": $(this).attr("rel"),
				"fillColors": $(this).attr("rel")
			}],
			"chartCursor": {
				"categoryBalloonEnabled": false,
				"cursorAlpha": 0,
				"zoomable": false,
				"graphBulletSize": 1.5
			},
			"categoryField": "url",
			"categoryAxis": {
				"gridPosition": "start",
				"gridAlpha": 0,
				"tickPosition": "start",
				"tickLength": 20
			},
			"export": {
				"enabled": true
			}
		});
	});
});
</script>
