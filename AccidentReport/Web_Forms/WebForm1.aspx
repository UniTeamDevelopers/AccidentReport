<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AccidentReport.Web_Forms.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head 

   <title></title>
   <title>Bootstrap Example</title> 
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
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
</body>
</html>
