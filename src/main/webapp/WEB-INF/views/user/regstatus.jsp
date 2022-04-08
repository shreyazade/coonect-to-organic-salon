<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>





<!DOCTYPE html>
<html lang="en">
<head>
  <title>regstatus</title>
  <meta charset="utf-8">
   <meta http-equiv = "refresh" content = "5; url = http://localhost:8081/user/login" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
</head>
<body>

<nav class="navbar navbar-dark bg-success">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Connect To Organic Salon</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      
     
    </ul>
  </div>
</nav>
<!--<img src="/image/Home 1.jpg" alt="Los Angeles" style=" width:200%;">
<div><img id="image-1" alt="Home16.jpg" src="/image/Home16.jpg"/></div>-->
 <p style="background-image: url('Home16.jpg');"> 
 <div class="container">
<h3>Register Status : ${requestScope.regstatus}</h3>
	

</div>
</body>
</html>
