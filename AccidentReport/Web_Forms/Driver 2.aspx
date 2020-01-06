<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Driver 1.aspx.cs" Inherits="AccidentReport.Web_Forms.WebForm4" %>

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
        .auto-style1 {
            width: 159px;
        }
    </style> 
    <!-----------------------Google Map---------------------->
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
        
   
    <div class="box" style ="float:left">
        <div id="canvasMap"> </div>
        <div>
            <br />
            <br />
            <br />
            <br /> 

         
                    <label for="Insert Data" class="auto-style1" style="font-size: 20px; background-color: #FFFFFF"><b style="font-size: 15px; background-color: #99CCFF">Insert Data</b></label>
            <br />
                    <label for="Section 1"><b>Section 1</b></label>
            <br />             
                <asp:Label ID="Label1" runat="server" Text="Select Province"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Central</asp:ListItem>
                <asp:ListItem>Eastern</asp:ListItem>
                <asp:ListItem>North Central</asp:ListItem>
                <asp:ListItem>Northern</asp:ListItem>
                <asp:ListItem>North Western</asp:ListItem>
                <asp:ListItem>Sabaragamuwa</asp:ListItem>
                <asp:ListItem>Southern</asp:ListItem>
                <asp:ListItem>Uva</asp:ListItem>
                <asp:ListItem>Western</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Select Distract"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Ampara</asp:ListItem>
                <asp:ListItem>Anuradhapura</asp:ListItem>
                <asp:ListItem>Badulla</asp:ListItem>
                <asp:ListItem>Batticola</asp:ListItem>
                <asp:ListItem>Colombo</asp:ListItem>
                <asp:ListItem>Galle</asp:ListItem>
                <asp:ListItem>Gampaha</asp:ListItem>
                <asp:ListItem>Hambanthota</asp:ListItem>
                <asp:ListItem>Jaffna</asp:ListItem>
                <asp:ListItem>Kalutara</asp:ListItem>
                <asp:ListItem>Kandy</asp:ListItem>
                <asp:ListItem>Kegalle</asp:ListItem>
                <asp:ListItem>Kilinochchi</asp:ListItem>
                <asp:ListItem>Kurunegala</asp:ListItem>
                <asp:ListItem>Mannar</asp:ListItem>
                <asp:ListItem>Matale</asp:ListItem>
                <asp:ListItem>Matara</asp:ListItem>
                <asp:ListItem>Moneragala</asp:ListItem>
                <asp:ListItem>Mullaitivu</asp:ListItem>
                <asp:ListItem>Nuwara Eliya	</asp:ListItem>
                <asp:ListItem>Polonnaruwa</asp:ListItem>
                <asp:ListItem>Puttalam</asp:ListItem>
                <asp:ListItem>Ratnapura</asp:ListItem>
                <asp:ListItem>Trincomalee</asp:ListItem>
                <asp:ListItem>Vavuniya</asp:ListItem>
            </asp:DropDownList>
           

           
            <br />
            <br />
            <centre>
            <asp:Label ID="Label3" runat="server" Text="Is That Your Correct Location"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Yes" />
            <asp:Button ID="Button2" runat="server" Text="No" />
            <br />
            <br />
            </centre>
            
            <br />
            <asp:Label ID="Label4" runat="server" Text="Date"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Time"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>am</asp:ListItem>
                <asp:ListItem>pm</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Section 2"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Vehicle Driven By You"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="Crash Type"></asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server">
            </asp:DropDownList>
            <br />
           

           
            <br />
            <asp:Label ID="Label9" runat="server" Text="Add Photos"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <asp:Label ID="Label10" runat="server" Text="Add Videos"></asp:Label>
            <asp:FileUpload ID="FileUpload2" runat="server" />
            <br />
            <asp:Label ID="Label11" runat="server" Text="3rd Party Damage"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Label ID="Label12" runat="server" Text="Are You Injured"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <table style="width:100%">
            <tr>
             <th><asp:Button ID="Button3" runat="server" Height="42px" Text="Submit" Width="164px" />   </th>
             <th><asp:Button ID="Button4" runat="server" Height="43px" Text="Update" Width="143px" />  </th> 
             <th><asp:Button ID="Button5" runat="server" Height="39px" Text="Delete " Width="160px" /> </th>            
            </tr>
                </table>
      
        </div>
           

           
        </div>

    
    </div><br />
    
 </form>
  
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
