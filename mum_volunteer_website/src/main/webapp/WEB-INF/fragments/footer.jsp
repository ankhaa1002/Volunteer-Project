<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- BEGIN FOOTER -->
<div class="footer">
	2016 &copy; EA Final Project. Group one
	<div class="span pull-right">
		<span class="go-top"><i class="icon-angle-up"></i></span>
	</div>
</div>
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<script src="static/plugins/jquery-1.8.3.min.js"
	type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="static/plugins/jquery-ui/jquery-ui-1.10.1.custom.min.js"
	type="text/javascript"></script>
<script src="static/plugins/bootstrap/js/bootstrap.min.js"
	type="text/javascript"></script>
<!--[if lt IE 9]>
	<script src="static/plugins/excanvas.js"></script>
	<script src="static/plugins/respond.js"></script>	
	<![endif]-->
<script src="static/plugins/breakpoints/breakpoints.js"
	type="text/javascript"></script>
<!-- IMPORTANT! jquery.slimscroll.min.js depends on jquery-ui-1.10.1.custom.min.js -->
<script
	src="static/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
	type="text/javascript"></script>
<script src="static/plugins/jquery.blockui.js" type="text/javascript"></script>
<script src="static/plugins/jquery.cookie.js" type="text/javascript"></script>
<script src="static/plugins/uniform/jquery.uniform.min.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="static/plugins/select2/select2.min.js"></script>
<script type="text/javascript"
	src="static/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script type="text/javascript"
	src="static/plugins/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript"
	src="static/plugins/data-tables/DT_bootstrap.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="static/scripts/app.js"></script>
<script src="static/scripts/table-managed.js"></script>
<script src="static/scripts/table-editable.js"></script>
<script>
	jQuery(document).ready(function() {
		App.init();
		TableManaged.init();
		TableEditable.init();
	});

	$("#skills").select2();
	$('#start_date').datepicker({
		format : 'dd/mm/yyyy'
	});
	$('#end_date').datepicker({
		format : 'dd/mm/yyyy'
	});
	$('#dob').datepicker({
		format : 'dd/mm/yyyy'
	});
	 $('#phone').mask('(00) 0000-0000');

	$("#edit").click(function() {
		var selected = [];

		$('#needCheck input:checked').each(function() {
			selected.push($(this).attr('value'));
		});

		if (selected.length > 1)
			alert('Multi selection forbidden on edit!');
		else if (selected.length == 0) {
			alert('You must select one project');
			$("#edit").attr("href", "#");
		} else {
			$("#edit").attr("href", "editProject-" + selected[0]);
		}

	});
	
	$("#editVolunteer").click(function() {
		var selected = [];

		$('#needCheck input:checked').each(function() {
			selected.push($(this).attr('value'));
		});

		if (selected.length > 1)
			alert('Multi selection forbidden on edit!');
		else if (selected.length == 0) {
			alert('You must select one volunteer');
			$("#edit").attr("href", "#");
		} else {
			$("#editVolunteer").attr("href", "editVolunteer-" + selected[0]);
		}

	});
	// 	$("#location").geocomplete();
</script>

<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>