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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<style>
body {
 
background-video: url('/video/hair_salon.mp4');
}
</style>
<body>

<nav class="navbar navbar-dark bg-success">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Connect To Organic Salon</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="<spring:url value='/user/details'/>">Home</a></li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="<spring:url value='/user/login'/>">Log Out</a></li>
    </ul>
  </div>
</nav>
 
<div class="container mt-lg-5" >
	<div class="text-center"><h1><span class="label label-success text-center badge-secondary m-5 pb-5 bg-info" align="center"><a href="<spring:url value='/customer/selectlocation'/>">Let's Go for Your Appointment!!!</a></span></h1></div>
</div>

<video controls autoplay loop source src=/video/hair_salon.mp4></video>
</body>
</html>
