<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>balance</title>

<link href="assests/css/bootstrap.min.css" rel="stylesheet">
<link href="assests/fonts/css/all.css" rel="stylesheet">
<link href="assests/css/bootstrap-theme.min.css" rel="stylesheet">
<script src="assests/js/jquery-2.2.0.min.js" type="text/javascript"></script>
<script src="assests/js/bootstrap.min.js" type="text/javascript"></script>

</head>
<body>

	<div class="col-md-12">
		<div class="panel panel-default">
			<div class="panel-body ">
				<div class="">
					<div class="panel-body bg-primary">
						<h2> <b>
							<% 
     out.println(session.getAttribute("Name"));
     %> Your balance is: <i class="fas fa-rupee-sign"></i> 
							<%
							out.println(session.getAttribute("balance"));
						%>
						</h2></b>

					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>