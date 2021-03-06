<!DOCTYPE html>
<html>
<head>
<title>Index</title>
<meta name="viewport" content="width=device-width, initial-scale=0.1">

<link href="assests/commoncss/logincss.css" rel="stylesheet">

<link href="assests/css/bootstrap.min.css" rel="stylesheet">
<link href="assests/fonts/css/all.css" rel="stylesheet">
<link href="assests/css/bootstrap-theme.min.css" rel="stylesheet">
<script src="assests/js/jquery-2.2.0.min.js" type="text/javascript"></script>
<script src="assests/js/bootstrap.min.js" type="text/javascript"></script>
<meta charset="ISO-8859-1">
</head>
<body>

	<div class="content-container ">
		<div class="container-fluid history text-center " style="background-color:red">
			<marquee behavior="alternate">
				<img src="assests/images/Online-Banking-PNG.png" width="300"
					height="120" alt="Internet Banking" />
			</marquee>
		</div>
	</div>

	<nav class="navbar  navbar-inverse" style="background-color:red">
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

					<li class="active"><a href="">Home</a></li>
					<li><a href="about.jsp">ABOUT</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<!-- Button trigger modal -->
					<li>
						<button type="button" class="btn btn-danger navbar-btn"
							data-toggle="modal" data-target="#pwdModal">
							<i class="fas fa-sign-in-alt"></i> SignIn
						</button>
					</li>
				</ul>
			</div>
		</div>
	</nav>


<!-- banner -->
     <section>
         <div class="container-fluid">
             <div class="row bg-info justify-content-center align-items-center" style="height: 80vh">
                <div class="col-sm-10 text-center">
                    <h1 class="display-2 text-capitalize"><span class="text-warning"><h1>Incorrect password....Try Again!</h1> </span><span class="text-white font-weight-bold"></span></h1>

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<div class="item active">
				<img class="img-responsive center-block"
					src="assests/images/loginform.jpg" width="600">
			</div>

			<div class="item">
				<img class="img-responsive center-block"
					src="assests/images/corosel4.jpeg" width="600">
			</div>

			<div class="item">
				<img class="img-responsive center-block"
					src="assests/images/tr.webp" width="600">
			</div>		
			
		</div>
	</div>
	<script src="assests/js/jquery-2.2.0.min.js" type="text/javascript"></script>
	<script src="assests/js/bootstrap.js" type="text/javascript"></script>

</div></div></div>
</section>

	<!--modal-->
	<div id="pwdModal" class="modal fade" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">?</button>
					<h1 class="text-center">
						<i class="fas fa-sign-in-alt fa-2x"></i><b>SignIn to Continue
						
					</h1>
					</b>
				</div>
				<div class="modal-body">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-body">



								<div class="panel-body bg-warning">
									<form action="loginservlet" method="post" autocomplete="on">
										<fieldset>
											<div class="form-group">
												<i class="fa fa-user fa-3x" aria-hidden="true"></i> <input
													class="form-control input-lg" placeholder=" User ID"
													name="custmrid" type="text">
											</div>
											<div class="form-group">
												<i class="fa fa-key fa-3x" aria-hidden="true"></i> <input
													class="form-control input-lg" placeholder="Password"
													name="password" type="password">
											</div>
											<input class="btn btn-lg btn-primary btn-block"
												value="LOGIN TO ACCOUNT" type="submit">
										</fieldset>
									</form>

								</div>

							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button class="btn btn-warning">
						<a href="forgotpwd.jsp"> <i class="fa fa-key"
							aria-hidden="true"></i> Forgot ?
						</a>
					</button>
					<div class="col-md-12">
						<button class="btn" data-dismiss="modal" aria-hidden="true"></button>
					</div>
				</div>
			</div>
		</div>
	</div>    
    
 
     <!-- footer -->
     <footer  style="background-color: #21d192">
        <div class="container">
            <div class="row ">             
                
                <div class="col-md-4 text-white text-center text-md-left ">
                    <div class="py-2 my-4">
                        <div>
                            <p class="text-white"> <i class="fa fa-map-marker mx-2 "></i>
                                   Bangalore 
                        </div>
 
                        <div> 
                            <p><i class="fa fa-phone  mx-2 "></i> +91 22-27782183</p>
                        </div>
                        <div>
                            <p><i class="fa fa-envelope  mx-2"></i><a href="mailto:support@eduonix.com">abuosama838@gmail.com</a></p>
                        </div>  
                    </div>  
                </div>
                
                <div class="col-md-4 text-white my-4 text-center text-md-left ">
                    <span class=" font-weight-bold ">Designed By</span>
					<p class="text-warning my-2" >Osama Mustaquim</p>
                    <div class="py-2">
                        <a href="#"><i class="fab fa-facebook fa-2x text-primary mx-3"></i></a>
                        <a href="#"><i class="fab fa-google-plus fa-2x text-danger mx-3"></i></a>
                        <a href="#"><i class="fab fa-twitter fa-2x text-info mx-3"></i></a>
                        <a href="#"><i class="fab fa-youtube fa-2x text-danger mx-3"></i></a>
                    </div>
                </div>
            </div>  
        </div>
     </footer>
     <!-- end of footer -->


</body>
</html>