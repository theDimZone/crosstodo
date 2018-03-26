// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require jquery_ujs
//= require_tree .
//= require vendor/icheck
//= require vendor/select2

	$(document).ready(function() {
		/*
		$("#project_id").change(function() {
		  	let selectedIndex = document.getElementById('project_id').selectedIndex;
			document.getElementById('selected').innerHTML = document.getElementById('project_id').options[selectedIndex].innerHTML;
		});
		*/
		
		$("#submit").click(function(event) {
		  event.preventDefault();
		  $("#form").submit();
		});
		
		$("#plus").click(function(event) {
		  $('#addtask').fadeIn();
		  $('#addtaskflex').fadeIn();
		});
		
		$("#hide").click(function(event) {
		  $('#addtask').fadeOut();
		  $('#addtaskflex').fadeOut();
		});
		
		$('input').iCheck({
			checkboxClass: 'icheckbox_square-blue',
			radioClass: 'iradio_square-blue',
			increaseArea: '20%' // не обязательно
		});
		
		$('#project_id').select2({
			minimumResultsForSearch: -1,
			width: 'resolve'
		});
		
		$('input').on('ifToggled', function(event){
			let todo_id = event.currentTarget.value;
			$("#"+todo_id).submit();
		});
		
		
		$("span").on("click", function(event) {
			let todo_id = event.currentTarget.className;
			$("#"+todo_id).submit();
		});
	});
	
	

