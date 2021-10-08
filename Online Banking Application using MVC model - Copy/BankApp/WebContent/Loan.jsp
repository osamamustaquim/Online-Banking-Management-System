<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="assests/css/bootstrap.min.css" rel="stylesheet">
<link href="assests/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="assests/fonts/css/all.css" rel="stylesheet">
<script src="assests/js/jquery-2.2.0.min.js" type="text/javascript"></script>
<script src="assests/js/bootstrap.min.js" type="text/javascript"></script>
<title>Loans</title>
</head>
<body>
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
							aria-hidden="true"></i> Home</a></li>
					<li class="active"><a href="services.jsp">Loans</a></li>


				</ul>
				<ul class="nav navbar-nav navbar-right">

					<li><a href="logout"> <i class="fa fa-sign-out"
							aria-hidden="true"></i> Sign Out
					</a></li>
				</ul>
			</div>
		</div>
	</nav>


	<!-- banner -->
	<section>
		<div class="container-fluid">
			<div class="row bg-info justify-content-center align-items-center"
				style="height: 80vh">
				<div class="col-sm-10 text-center">
					<h1 class="display-2 text-capitalize">
						<span class="text-warning"> <i class="fas fa-landmark"
							style="font-size: 48px; color:"></i> <b>Wondering about
								Loans? We understand Your Feelings </b>
						</span><span class="text-white font-weight-bold"></span>
					</h1>
					<br>
					<br>
					<div class="row">
						<div class="col-sm-6">
							<div class="card">
								<div class="card-body">
									<h2 class="card-title">
										<i class="fa fa-home   "></i> Home Loan
									</h2>
									<h4>
										<p class="card-text">Home Loans starting at 8.00%* p.a.
											onwards.</p>
										<a href="homeloan.html" class="btn btn-warning">Click Here
											for home loan</a>
									</h4>
								</div>
							</div>
						</div>
						
					</div>
					<br>
					<br> <br>
					
					

				</div>
			</div>
		</div>
	</section>
	<!-- end of banner -->




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