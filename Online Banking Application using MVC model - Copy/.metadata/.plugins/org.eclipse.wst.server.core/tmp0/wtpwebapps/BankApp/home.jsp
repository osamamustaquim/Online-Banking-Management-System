 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link href="assests/css/bootstrap.min.css" rel="stylesheet">
<link href="assests/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="assests/commoncss/homestyle.css" rel="stylesheet">
<script src="assests/js/jquery-2.2.0.min.js"  type="text/javascript"></script>
<script src="assests/js/bootstrap.min.js"  type="text/javascript"></script>
<link href="assests/fonts/css/all.css" rel="stylesheet">

<title>home page</title>
</head>
<body>

<div class="haeder">
		<div class="container-fluid history text-center " style="background-color:#5AF920">
			<marquee behavior="alternate">
				<img src="assests/images/Online-Banking-PNG.png" width="300"
					height="120" alt="Internet Banking" />
			</marquee>
		</div>
	</div>	

<nav class="navbar navbar-inverse ">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="home.jsp"> <i class="fa fa-home" aria-hidden="true"></i> Homepage</a></li>
        <li ><a href="services.jsp">Services</a></li>
        <li><a href="contact.jsp">Contact </a></li>
       
      </ul>
      <ul class="nav navbar-nav navbar-right">
       
        <li><a href="logout"> <i class="fa fa-sign-out" aria-hidden="true"> </i>SignOut</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="sidebar-container">
  <div class="sidebar-logo">
    ONLINE BANKING
  </div>
  <ul class="sidebar-navigation">
    <li class="header">Our Online Services</li>
    
     <li>     
      <a href="balanceservlet" data-toggle="modal" data-target="#pwdModal">
        <i class="fa fa-rupee-sign" aria-hidden="true"></i> Account Balance?
      </a>
    </li>
    
    <li>
      <a href="transferamt.jsp">
        <i class="fa fa-donate " aria-hidden="true"></i> Amount Transfer
      </a>
    </li>
    
    <li>
      <a href="Getstatement">
        <i class="fa fa-book" aria-hidden="true"></i> Bank Statement
      </a>
    </li>
    
      
    <li>
      <a href="changepassword.jsp">
        <i class="fa fa-lock" aria-hidden="true"></i> ChangePassword
      </a>
    </li>
    <li>
      <a href="homeloan.html">
        <i class="fa fa-credit-card" aria-hidden="true"></i> Apply for Loan
      </a>
    </li> 
    
    
    <li>
      <a href="Getstatement">
        <i class="fa fa-cog" aria-hidden="true"></i> Privacy settings
      </a>
    </li>
    
    <li>
      <a href="#">
        <i class="fa fa-info-circle" aria-hidden="true"></i> Information
      </a>
    </li>
    
    
  </ul>
</div>

<div class="content-container">

  <div class="container-fluid">

    <!-- Main component for a primary marketing message or call to action -->
    <div class="jumbotron">
   
      
    <font color="red"> <h1> <i class="fas fa-landmark  "  style="color:red"></i> Gringotts Wizarding Bank </h1></font>
     
      <p></p><br>
        <h1> Welcome
    <% 
     out.println(session.getAttribute("Name"));
     %>  </h1>
      <p></p>
      
      <br><br><br><br><br> <br><br>  <br><br> <br><br>   <br><br>  <p>
        <a class="btn btn-lg btn-primary" href="../../components/#navbar" role="button">More about your account &raquo;</a>
      </p>
    </div>

  </div>
</div><br><br>

<!-- To check balance -->

<div id="pwdModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">      
      <div class="modal-body">          
      </div>      
  </div>
  </div>
</div>







</body>       
</html>