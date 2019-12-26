<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AccidentReport.Web_Forms.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
   <title>Accident Report</title> 
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style type="text/css">
        html, body {
            height: 100%;
            margin: 0px;
            padding: 0px
        }

        #canvasMap {
            height: 500px;
            width: 104%;
            margin: 0px;
            padding: 0px
        }

        .box {
            float: right;
            width: 70%;
            padding: 50px;
            margin-left: 191px;
        }
    </style> 
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAHH5jw3V1gP-xbvOqj6mBo1tH7C5QbWzE&callback=myMap"></script>  
    <script type="text/javascript">  
        var map;
        function LoadGoogleMAP() {
            var SetmapOptions = {
                zoom: 16,
                center: new google.maps.LatLng(6.820929, 80.039777)
            };
            map = new google.maps.Map(document.getElementById('canvasMap'),
                SetmapOptions);
        }

        google.maps.event.addDomListener(window, 'load', LoadGoogleMAP);

    </script>  
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Accident Report</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Your Area</a></li>
      <li><a href="#">Contact</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
    <div class="box">
        <div id="canvasMap"> </div>
    </div>

      <!-----------------------Footer---------------------->

    <footer class="page-footer font-small mdb-color pt-4">

    	<!-- Footer Links -->
    	<div class="container text-center text-md-left">

    	  <!-- Footer links -->
    	  <div class="row text-center text-md-left mt-3 pb-3">

    		<!-- Grid column -->
    		<div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
    		  <h6 class="text-uppercase mb-4 font-weight-bold">Sri Lanka</h6>
    		  <p>Sri Lanka is one of the leading romantic destinations in the whole world.
    			  The land of serendipity brings spiritual tranquility and a chance to rediscover oneself..
    			  <br><br>Best Tour Operator in Sri Lanka 2019
    			</p>
    		</div>
    		<!-- Grid column -->

    		<hr class="w-100 clearfix d-md-none">

    		<!-- Grid column -->
    		<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
    		  <h6 class="text-uppercase mb-4 font-weight-bold">Social Media</h6>
    		  <p>
    			<a href="https://www.facebook.com/K2-Photography-2875597659147801/"><img src="../Images/facebook.png">Facebook</a>
    		  </p>
    		  <p>
    			<a href="https://twitter.com/tviter"><img src="../Images/twitter.png">Twitter</a>
    		  </p>
    		  <p>
    			<a href="https://www.instagram.com/travel_with_wife/"><img src="../Images/instagram.png">Instagram</a>
    		  </p>
    		  <p>
    			<a href="https://www.youtube.com/channel/UCwXfRdTtVeVnXXF4poaYw0Q"><img src="../Images/youtube.png">Youtube</a>
    		  </p>
    		</div>
    		<!-- Grid column -->


    		<hr class="w-100 clearfix d-md-none">

    		<!-- Grid column -->
    		<div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
    		  <h6 class="text-uppercase mb-4 font-weight-bold">Contact</h6>
    		  <p>
    			<i class="fas fa-home mr-3"></i>Simplex Group</p>
    		  <p>
    			<i class="fas fa-envelope mr-3"></i>simplex@gmail.com</p>
    		  <p>
    			<i class="fas fa-phone mr-3"></i> +94  710506478</p>
    		  <p>
    			<i class="fas fa-print mr-3"></i> +94  716625326</p>
    		</div>
    		<!-- Grid column -->

    	  </div>
    	  <!-- Footer links -->

    	  <hr>

    	  <!-- Grid row -->
    	  <div class="row d-flex align-items-center">

    		<!-- Grid column -->
    		<div class="col-md-7 col-lg-8">

    		  <!--Copyright-->


    		</div>
    		<!-- Grid column -->

    		<!-- Grid column -->
    		<div class="col-md-5 col-lg-4 ml-lg-0">

    		  <!-- Social buttons -->
    		  <div class="text-center text-md-right">
    			<ul class="list-unstyled list-inline">
    			  <li class="list-inline-item">
    				<a class="btn-floating btn-sm rgba-white-slight mx-1">
    				  <i class="fab fa-facebook-f"></i>
    				</a>
    			  </li>
    			  <li class="list-inline-item">
    				<a class="btn-floating btn-sm rgba-white-slight mx-1">
    				  <i class="fab fa-twitter"></i>
    				</a>
    			  </li>
    			  <li class="list-inline-item">
    				<a class="btn-floating btn-sm rgba-white-slight mx-1">
    				  <i class="fab fa-google-plus-g"></i>
    				</a>
    			  </li>
    			  <li class="list-inline-item">
    				<a class="btn-floating btn-sm rgba-white-slight mx-1">
    				  <i class="fab fa-linkedin-in"></i>
    				</a>
    			  </li>
    			</ul>
    		  </div>

    		</div>
    		<!-- Grid column -->

    	  </div>
    	  <!-- Grid row -->

    	</div>
    	<!-- Footer Links -->

      </footer>
    <!--Copyright-->
        <p class="text-center text-md-left">© 2018 Copyright:
          <a href="https://mdbootstrap.com/education/bootstrap/">
            <strong> MDBootstrap.com</strong>
          </a>
        </p>

      <!-- Footer -->

</body>
</html>
