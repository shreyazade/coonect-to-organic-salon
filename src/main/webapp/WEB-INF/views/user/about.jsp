<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html >
<head>
<!-- <meta charset="ISO-8859-1"> -->

<title>About Us</title>
</head>
<body>


<style>
body {
	margin: 0;
	padding: 0;
	font-weight: Century Gothic;
	background: url("http://localhost:8080/About.jpg")no-repeat;
	background-size: cover;
	background-color: pink;
	background-position: center;
	width:100%; height:650px;
}
.container{
	height: 75vh;
 	width: 30%;
	background: rgba(0, 0, 0, .6);
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	padding: 0 20px;
}

.img{
	height: 140px;
	width: 100px;
	background: url("http://localhost:8080/about1.png")no-repeat;
	background-size: cover;
	background-position:center;
	border-radius: 50px;
	position: absolute;
	top: 0%;
	left: 50%;
	transform: translate(-50%, -50%);
}
.container h1{
	color: white;
	margin-top: 70px;
	
}	
.container p{
	color: white;
	margin-top: 60px;
	font-size: large;
	
}
.btn{
	background: no-repeat;
	outline: none;
	border: 1px solid white;
	color: white;
	width: 50%;
	padding: 7px 15px;
	font_size: large;
	cursor: pointer;
	transition: 0.3s ease;
	margin-top: 50px;
}
.btn:hover{
	background: white;
	color: black;
	
}
	


</style>

<div class="container" style="background-color:darkpink;">
<center>
	<h1>About Us...</h1>
 	<div class="img">
 	
 	</div> 
 	
 	   <h4> <p style="color:white;"> Our Team is ready to make you look and feel at your absolute best! The Salon caters to all services
 	    including Haircuts, Hair Treatments, Coloring, Styling, Grooming, Relaxing Pedicures & Manicures, Make-Ups and much more. 
 	    Our Luxury Spa offers our guests world class Spa and Body Treatments by our experienced Masseurs and Masseuses. 
 	    Our approach towards Hair, Make-up and Beauty is framed against a backdrop of clean-lined of new and modern creations which are 
 	    crafted and inspired by You, for You. We look forward to serving you in the best of ways!
 	</p></h4>
 	<button class="btn">Read more</button>
</center>


</body>
</html>