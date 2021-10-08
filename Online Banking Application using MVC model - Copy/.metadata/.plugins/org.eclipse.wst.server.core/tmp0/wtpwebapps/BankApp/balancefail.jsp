<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link href="assests/css/bootstrap.min.css" rel="stylesheet">
<link href="assests/fonts/css/all.css" rel="stylesheet">
<link href="assests/css/bootstrap-theme.min.css" rel="stylesheet">
<script src="assests/js/jquery-2.2.0.min.js"  type="text/javascript"></script>
<script src="assests/js/bootstrap.min.js"  type="text/javascript"></script>

<title>balancefail</title>
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
							aria-hidden="true"></i> Homepage</a></li>
					<li class="active"><a href="">Check Balance</a></li>
		

				</ul>
				<ul class="nav navbar-nav navbar-right">

					<li><a href="logout"> <i class="fa fa-sign-out"
							aria-hidden="true"></i> Sign Out
					</a></li>
				</ul>
			</div>
		</div>
	</nav>
<body>    
     <!-- banner -->
     <section>
         <div class="container-fluid">
             <div class="row bg-info justify-content-center align-items-center" style="height: 80vh">
                <div class="col-sm-10 text-center">
                    <h1 class="display-2 text-capitalize"><span class="text-warning">Fail to fecth balance...Sorry for the inconvinienceap </span><span class="text-white font-weight-bold">website</span></h1>
                </div>
             </div>
         </div>
     </section>
     <!-- end of banner -->


</body>
</html>