<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Connect To Organic Salon</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style type="text/css">
   body{
  background-color:mistyrose ;
 background-size: cover;
 background-repeat: no-repeat;
  }
  
a:link, a:visited {
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#" style="background-color:goldenrod;color:white">Connect To Organic Salon</a>
    </div>
    <ul class="nav navbar-nav">
     
      <li ><a href="/customer/secpage" style="background-color:crimson;color:white;">Home Service</a></li>
	  <li ><a href="/customer/secpage"  style="background-color:crimson;color:white;">Salon Service</a></li>
	  <!-- <li><a href="/customer/review">Review</a></li>
	  	  <li><a href="/customer/selectprofilecust">Profile</a></li> -->
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
      <li><a href="<spring:url value='/user/login'/>" style="background-color:crimson;color:white;">Log Out</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
	<h3>${requestScope.mesg}</h3>
	<marquee scrollamount="30"><font size="10"
          face="serif"
          color="green" >
            WELCOME CUSTOMER!!
        </font></marquee>

<div class="text-center"><h1><span class="label label-danger text-center badge-secondary" align="center">Choose Home Service Or Salon Service To book Your Appointment!!</span></h1></div>

</div>

<div id="myCarousel" class="carousel slide carousel-fade" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
         <img src="/image/imag21.jpg" alt="Los Angeles" style="width:100%;">
         <div class="carousel-caption">
            <h3 class="h3-responsive">Beauty comes from the inside. Inside the hair salon!!</h3>
          </div>
      </div>

      <div class="item">
        <img src="/image/imag4.jpg" alt="Chicago" style="width:100%;">
         <div class="carousel-caption">
            <h3 class="h3-responsive">I like my products like I like my people, non-toxic...</h3>
          </div>
      </div>
    
      <div class="item">
        <img src="/image/imag3.jpg" alt="New york" style="width:100%;">
         <div class="carousel-caption">
            <h3 class="h3-responsive">Great skin doesn’t happen by chance, it happens by appointment...</h3>
          </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</body>
</html>
