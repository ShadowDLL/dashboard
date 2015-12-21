$(function(){
	$('.date').mask('00/00/0000');
	$('.time').mask('00:00:00');
	$('.date_time').mask('00/00/0000 00:00:00');
	$('.cep').mask('00000-000');
	$('.phone').mask('(00) 0000-0000');
	$('.cellphone').mask('(00) 0-0000-0000');
	$('.cpf').mask('000.000.000-00', {reverse: true});
	$('.cnpj').mask('00.000.000/0000-00', {reverse: true});
	$('.money').mask('000.000.000.000.000,00', {reverse: true});
	$('.money2').mask("#.##0,00", {reverse: true});

	$('.ip_address').mask('0ZZ.0ZZ.0ZZ.0ZZ', {
		translation: {
			'Z': {
				pattern: /[0-9]/, optional: true
			}
		}
	});
	
	$('.ip_address').mask('099.099.099.099');
	$('.percent').mask('##0,00%', {reverse: true});
	$('.clear-if-not-match').mask("00/00/0000", {clearIfNotMatch: true});
	$('.placeholder').mask("00/00/0000", {placeholder: "__/__/____"});
	
	$("form").submit(function(e){
		$(".required").each(function(){
			$(this).parent().removeClass('has-error');
		});
		
		$(".required").each(function(){
			if($(this).attr('id') !== 'id'){
				if($(this).val().length == 0){
					$(this).focus().parent().addClass('has-error');
					e.preventDefault();
					return false;
				} else {
					$(this).parent().addClass('has-success');
				}
			}
		});
		
		return true;
	});
	
	$(".updateRecord").click(function(){
		window.location = $(this).attr('rel');
	});
	
	$(".actionButton").click(function(){
		var url = $(this).attr('rel');
		window.location = url;
	});
	
	$(".btnSave").click(function(){
		$("form").submit();
	});
	
	$('#tabs a:first').tab('show');
	
	$(document).on('click', '.btnAddPermission', function(){
		var url		= $("#url").val() + '/addPermission';
		var data	= $(this).attr('rel').split('|');
		var id		= "#" + $(this).attr('id');
		
		$.ajax({
			url: url,
			type: "POST",
			data: {
				module:		data[0],
				group_id:	data[1],
				method:		data[2]
			},
			success: function(returns){
				$(id)
					.removeClass("btnAddPermission").addClass("btnRemovePermission")
					.removeClass("btn-danger").addClass("btn-success")
					.text("Yes");
			}
		});
	});
	
	$(document).on('click', '.btnRemovePermission', function(){
		var url		= $("#url").val() + '/removePermission';
		var data	= $(this).attr('rel').split('|');
		var id		= "#" + $(this).attr('id');
		
		$.ajax({
			url: url,
			type: "POST",
			data: {
				module:		data[0],
				group_id:	data[1],
				method:		data[2]
			},
			success: function(returns){
				$(id)
					.removeClass("btnRemovePermission").addClass("btnAddPermission")
					.removeClass("btn-success").addClass("btn-danger")
					.text("No");
			}
		});
	});
	
	$(document).on('click', '.btnYesToAll', function(){
		$("#txtContentYesToAll").empty().val($(this).attr('rel'));
	});
	
	$(document).on('click', '.btnNoToAll', function(){
		$("#txtContentNoToAll").empty().val($(this).attr('rel'));
	});
	
	$(document).on('click', '.btnConfirmYesToAll', function(){
		var url		= $("#url").val() + '/YesToAll';
		var data	= $("#txtContentYesToAll").val().split('|');
		var id		= "#" + $(this).attr('id');
		
		$.ajax({
			url: url,
			type: "POST",
			data: {
				module:		data[0],
				group_id:	data[1]
			},
			success: function(returns){
				$("." + data[0] + "_" + data[1]).each(function(){
					$(this).removeClass("btn-danger").addClass("btn-success").text("Yes");;
				});
			}
		});
		
		$('#modalYesToAll').modal('hide');
	});
	
	$(document).on('click', '.btnConfirmNoToAll', function(){
		var url		= $("#url").val() + '/noToAll';
		var data	= $("#txtContentNoToAll").val().split('|');
		var id		= "#" + $(this).attr('id');
		
		$.ajax({
			url: url,
			type: "POST",
			data: {
				module:		data[0],
				group_id:	data[1]
			},
			success: function(returns){
				$("." + data[0] + "_" + data[1]).each(function(){
					$(this).removeClass("btn-success").addClass("btn-danger").text("No");;
				});
			}
		});
		
		$('#modalNoToAll').modal('hide');
	});
	
	$(document).on('change', '.menu_assignment', function(){
		var url = $("#url").val() + '/addModuleToMenu';
		
		$.ajax({
			url: url,
			type: "POST",
			data: {
				module:		$(this).attr('rel'),
				menu_id:	$(this).val()
			},
			success: function(returns){
				console.log(returns);
			}
		});
	});
	
	$(document).on('click', '.btnChangeTheme', function(){
		var url = $("#url").val() + '/changeSystemTheme';
		
		$.ajax({
			url: url,
			type: "POST",
			data: {
				theme: $(this).attr('rel'),
			},
			success: function(returns){
				location.reload();
			}
		});
	});
});
