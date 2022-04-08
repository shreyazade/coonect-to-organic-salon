<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>




<!DOCTYPE html>
<html lang="en">
<head>
  <title>Connect To Organic Salon</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style type="text/css">
  body{
   background-image:url("/image/plaintxt.jpeg"); 
   background-size: cover;
 background-repeat: no-repeat;}</style>
</head>

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


  
<div class="container">

<sf:form method="post" action="selectslots">
<div  >
		
		
		<h2>Shop Name: ${sessionScope.shop.shopName}: ${sessionScope.shop_locations}</h2>
		<h3>Select Services </h3>
		
		<table border="1" class="table table-striped table-bordered" >	
			<tr>
				<th>Service Name</th><th>ServiceDescription</th><th>Service Price</th><th>Service Duration</th><th>select</th>
			</tr>
			
				<c:forEach var="s" items="${sessionScope.services}">
					<tr>
						<td> ${s.serviceName}</td>
						<td>${s.serviceDescription}</td>
						<td>${s.servicePrice}</td>
						<td>${s.serviceDuration}</td>
						<td><input type="checkbox" value="${s.serviceId}" name="services"></td>
					</tr>
				</c:forEach>
			
	
			</table >
			
			<h3>Select Employee</h3>
		
		<table border="1" class="table table-striped table-bordered" >	
			<tr>
				<th>Employee Name</th><th>Employee Mob No</th><th>Employee Experience</th><th>Salon Name</th><th>Status</th><th>select</th>
			</tr>
			
				<c:forEach var="e" items="${sessionScope.employee}">
					<tr>
						<td> ${e.empName}</td>
						<td>${e.empMobNo}</td>					
						<td>${e.empExperience}</td>
					    <td>${e.salonName}</td>
						<td>${e.status}</td>
						<td><input type="checkbox" value="${e.empId}" name="employee"></td>
					</tr>
				</c:forEach>
			
	
			</table>
				

			<input type="submit" class="btn btn-success value="submit">
		</div>
		<marquee behavior="scroll" direction="left" scrollamount="15" >
<img src="/image/as1.jpg" width="210" height="200" alt="hairstyle">
<img src="/image/as2.jpg" width="210" height="200" alt="hairstyle">
<img src="/image/as4.jpg" width="210" height="200" alt="hairstyle">
<img src="/image/as6.jpg" width="210" height="200" alt="hairstyle">
<img src="/image/as7.jpg" width="210" height="200" alt="hairstyle">
<img src="/image/as8.jpg" width="210" height="200" alt="hairstyle">
<img src="/image/as9.jpg" width="210" height="200" alt="hairstyle">
</marquee>
<!--<table width="100%" border="0">
  <tr>    
  <td><img src="/image/as1.jpg"  align="left" /width="120%" height="70%"></td>
  <td><img src="/image/as2.jpg" align="center" /width="30%" height="20%"></td>
  <td><img src="/image/as3.jpg" align="right"/width="170%" height="40%"></td>
  </tr>
   <tr>    
  <td><img src="/image/as4.jpg"  align="left" /width="120%" height="40%"></td>
  <td><img src="/image/as5.jpg" align="center" /width="90%" height="40%"></td>
  <td><img src="/image/as6.jpg" align="right"/width="130%" height="40%"></td>
  </tr>
</table>-->


	</sf:form>
 
</div>
   



</body>
</html>
