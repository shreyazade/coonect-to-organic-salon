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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <!-- for home symbol -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  
  <style>
 body{
  background-image: url("/image/nice1.png");
/*  background-size: cover;
 background-repeat: no-repeat; */
  }
  a:link{
/* background-color: Rebeccapurple ; */
  color: white;
padding: 10px 24px;
  text-align: center;
  text-decoration: white;
  display : inline-block
  
} 
  </style>
</head>
<body>



<nav class="navbar navbar-dark bg-primary">

  <div class="container-fluid">
    <div class="navbar-header">

      <a class="navbar-brand" href="#" style="background-color:darkred">Connect To Organic Salon</a>
    </div>
    <ul class="nav navbar-nav navbar-right">
        <li><a href="<spring:url value='/user/login'/>" style="background-color:crimson" role="button">Log Out</a></li>
    </ul>
  </div>
</nav>



<div class="w3-sidebar w3-bar-block w3-peachpuff">

	<a href="<spring:url value='/shopkeeper/services'/>" class="w3-bar-item w3-button w3-hover-blue">Services</a><br><br>
	<a href="<spring:url value='/shopkeeper/slots'/>"  class="w3-bar-item w3-button w3-hover-green">Slots</a><br><br>
	<a href="<spring:url value='/shopkeeper/addslot'/>" class="w3-bar-item w3-button w3-hover-red" >Add New slot</a><br><br>
	<a href="<spring:url value='/shopkeeper/addservice'/>" class="w3-bar-item w3-button w3-hover-black">Add New service</a><br><br>
	<a href="<spring:url value='/shopkeeper/employee'/>" class="w3-bar-item w3-button w3-hover-khaki">Employee Details</a><br><br>
	<a href="<spring:url value='/shopkeeper/addemployee'/>" class="w3-bar-item w3-button w3-hover-yellow" >Add New Employee</a><br><br>
</div>




<div style="margin-left:15%">
  
<div class="w3-container">
 <table border="1" class="table table-striped table-bordered">
        

		<caption><h2 style="color:white;background-color:grey;">Appointments List</h2></caption>
		
		<tr>
					<th>Appoint Id</th><th>Date</th><th>Services</th><th>Slot</th><th>Employee</th>
				</tr>
 	<c:forEach var="a" items="${requestScope.alist}">
			<tr>
				<td>${a.appointId}</td>
				<td>${a.regDate}</td>
				<c:forEach var="serv" items="${a.services}">
				<td>${serv.serviceName}</td>
				</c:forEach> 
				<c:forEach var="slot" items="${a.slots}">
				<td>${slot.slotName}</td>
				</c:forEach>
				<c:forEach var="emp" items="${a.employee}">
				<td>${emp.empName}</td>
				</c:forEach> 
			</tr>
		</c:forEach> 	
	</table><br>
	</div>
	

</body>
</html>
