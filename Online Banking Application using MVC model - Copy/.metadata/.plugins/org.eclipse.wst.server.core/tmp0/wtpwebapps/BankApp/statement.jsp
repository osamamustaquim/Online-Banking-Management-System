<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 <%@page import="java.util.*"%>
 <%@page import="java.util.Iterator"%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>transactions report</title>
<link href="assests/css/bootstrap.min.css" rel="stylesheet">
<link href="assests/fonts/css/all.css" rel="stylesheet">
<link href="assests/css/bootstrap-theme.min.css" rel="stylesheet">
<script src="assests/js/jquery-2.2.0.min.js"  type="text/javascript"></script>
<script src="assests/js/bootstrap.min.js"  type="text/javascript"></script>

</head>

<nav class="navbar navbar-inverse">
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
        <li ><a href="home.jsp"> <i class="fa fa-home" aria-hidden="true"></i>Home</a></li>
        <li class="active"><a href="services.jsp">Transactions</a></li>
     
       
      </ul>
      <ul class="nav navbar-nav navbar-right">
       
        <li><a href="logout"><i class="fa fa-sign-out" aria-hidden="true"></i> SignOut</a></li>
      </ul>
    </div>
  </div>
</nav>
<body bgcolor="#CCF381">
<marquee behavior="alternate" BGCOLOR="BLUE">
<font color="WHITE"><h1>BANKING TRANSACTIONS</h1></font>
</marquee>

<table class="table table-striped table-dark table-hover table-responsive">

<tr>
<td scope="col" WIDTH="2%"  HEIGHT ="500%" style="color:red"><b><h3>DATE</h3></b></td>
<td scope="col" WIDTH='3.5%' style="color:red"><b><h3> PARTICULARS </h3></b> </td>
<td scope="col" WIDTH='1%' style="color:red"><b><h3> DEBIT</h3> </b></td>
<td scope="col" WIDTH='3%' style="color:red"><b><h3> BENEFICIARY NAME </h3></b> </td>
</tr>

<% 		ArrayList transferamt = (ArrayList)session.getAttribute("al1");
		ArrayList transferacnum = (ArrayList)session.getAttribute("al2");
		ArrayList recpname = (ArrayList)session.getAttribute("al3");
		ArrayList transferdate = (ArrayList)session.getAttribute("al4");
		
		Iterator transferamtitr = transferamt.iterator();
		Iterator transferacnumitr = transferacnum.iterator();
		Iterator recpnameitr =   recpname.iterator();
		Iterator transferdateitr = transferdate.iterator();
		while(transferamtitr.hasNext() && transferacnumitr.hasNext() && recpnameitr.hasNext() && transferdateitr.hasNext()){
			out.println("<tr>\r\n" +
			"            <td>\r\n" + transferdateitr.next() +
			
			"            <td>\r\n"+"TRANSFER FROM  " + session.getAttribute("accountnum") +"<br>" +  "TRANSFER TO "+ transferacnumitr.next() +
			"            <td>\r\n" + transferamtitr.next() +
			"            <td>\r\n" + recpnameitr.next()); 
			
		}
%>

</table>
<h3>
<% 
     out.println(session.getAttribute("Name"));
     %> Your balance is: <i class="fas fa-rupee-sign"></i> 
							<%
							out.println(session.getAttribute("balance"));
						%></h3>
	<i class="fa fa-print fa-2x" aria-hidden="true"></i><button type="button" class="btn btn-warning">Print </button>
    
    <br><br>
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