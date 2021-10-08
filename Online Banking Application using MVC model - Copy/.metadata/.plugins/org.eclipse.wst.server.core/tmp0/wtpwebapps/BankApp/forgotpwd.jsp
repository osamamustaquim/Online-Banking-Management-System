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
<title>forgot password</title>
</head>
<body>


<div class="well ">
<nav class="navbar navbar-inverse"> 
<div class="container-fluid"> 
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li ><a href="login.html">  <i class="fa fa-home" aria-hidden="true"></i>Home</a></li>       
        <li class="active"><a href="">CHANGE PASSWORD</a></li>        
      </ul>     
                      
    </div>  
    </div>
</nav></div>

  
  
  <!-- banner -->
     <section>
         <div class="container-fluid">
             <div class="row bg-info justify-content-center align-items-center" style="height: 68vh">
                <div class="col-sm-10 text-center">
                    <h1 class="display-2 text-capitalize"><span class="text-warning"><button type="button" class="btn btn-warning">
  <a href="#" data-target="#pwdModal" data-toggle="modal">Click here to reset your password!</a>
  </button></span><span class="text-white font-weight-bold"></span></h1>
                </div>
             </div>
         </div>
     </section>
     <!-- end of banner -->

    <!-- Main component for a primary marketing message or call to action -->
    

<!--modal-->
<div id="pwdModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h1 class="text-center">What's My Password?</h1>
      </div>
      <div class="modal-body">
          <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="text-center">
                          
                          <p>If you have forgotten your password you can reset it here.</p>
                            <div class="panel-body">
                            <form accept-charset="UTF-8" role="form" action="Mail4"
						method="post">
                                <fieldset>
                                    <div class="form-group">
                                        <input class="form-control input-lg" placeholder="E-mail Address" name="email">
                                    </div>
                                    <input class="btn btn-lg btn-primary btn-block" value="Send Me Reset link" type="submit">
                                </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
      </div>
      <div class="modal-footer">
          <div class="col-md-12">
          <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
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