<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>change password</title>

<link href="assests/css/bootstrap.min.css" rel="stylesheet">
<link href="assests/fonts/css/all.css" rel="stylesheet">
<link href="assests/css/bootstrap-theme.min.css" rel="stylesheet">
<script src="assests/js/jquery-2.2.0.min.js" type="text/javascript"></script>
<script src="assests/js/bootstrap.min.js" type="text/javascript"></script>

<link href="assests/commoncss/form.css" rel="stylesheet">

</head>
<body>
<div class="well">
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="home.jsp"><i class="fa fa-home"
							aria-hidden="true"></i> Homepage</a></li>
					<li class="active"><a href="">Change Password</a></li>


				</ul>
				<ul class="nav navbar-nav navbar-right">

					<li><a href="logout"> <i class="fa fa-sign-out"
							aria-hidden="true"></i>SignOut
					</a>
					<li>
				</ul>
			</div>
		</div>
	</nav></div>

	<!-- banner -->
	<section>
		<div class="container-fluid">
			<div class="row bg-info justify-content-center align-items-center"
				style="height: 80vh">
				<div class="col-sm-10 text-center">

					<div class="row">
						<div class="col-md-4 col-md-offset-3">
<br><br>
							<div class="card-header  ">
								<h1 class="card-title">
									<span class="text-warning"> <b>Change  Password</b>
									</span>
								</h1>
							</div>
<br>


							<form accept-charset="UTF-8" role="form"
								action="ChangePwdservlet">
								<fieldset>
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-lock"
												aria-hidden="true"></i></span> <input type="password"
												placeholder="New Password" name="cpswd" class="form-control"
												value="">
										</div>
									</div>
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="fa fa-lock text-danger" aria-hidden="true"></i></span> <input
												type="password" placeholder="Confirm New Password"
												name="ncpswd" class="form-control" value="">
										</div>
									</div>
									<div class="row">
										<div class="col">
											<input class="btn btn-lg btn-success btn-block" type="submit"
												value="Update Password">
										</div>
										<div class="col">
											<a href="home.jsp" class="btn btn-lg btn-warning btn-block">Cancel</a>
										</div>
									</div>
								</fieldset>
							</form>


						</div>
					</div>
				</div>
			</div>
		</div>
	</section>




	<!-- footer -->
	<footer style="background-color: #21d192">
		<div class="container">
			<div class="row ">

				<div class="col-md-4 text-white text-center text-md-left ">
					<div class="py-2 my-4">
						<div>
							<p class="text-white">
								<i class="fa fa-map-marker mx-2 "></i> Bangalore
						</div>

						<div>
							<p>
								<i class="fa fa-phone  mx-2 "></i> +91 22-27782183
							</p>
						</div>
						<div>
							<p>
								<i class="fa fa-envelope  mx-2"></i><a
									href="mailto:support@eduonix.com">abuosama838@gmail.com</a>
							</p>
						</div>
					</div>
				</div>

				<div class="col-md-4 text-white my-4 text-center text-md-left ">
					<span class=" font-weight-bold ">Designed By</span>
					<p class="text-warning my-2">Osama Mustaquim</p>
					<div class="py-2">
						<a href="#"><i class="fab fa-facebook fa-2x text-primary mx-3"></i></a>
						<a href="#"><i
							class="fab fa-google-plus fa-2x text-danger mx-3"></i></a> <a
							href="#"><i class="fab fa-twitter fa-2x text-info mx-3"></i></a>
						<a href="#"><i class="fab fa-youtube fa-2x text-danger mx-3"></i></a>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- end of footer -->
</body>
</html>