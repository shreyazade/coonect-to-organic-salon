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
    <ul class="nav navbar-nav navbar-right">
     <li><a href="<spring:url value='/user/login'/>">Log Out</a></li>

    </ul>
  </div>
</nav>
  
<div class="container">
<sf:form method="post" action="selectemployee">
<div  >

		
		
		<h2>Shop Name: ${sessionScope.shop.shopName}: ${sessionScope.shop_location}</h2>
		<h3>Select Employee</h3>
		
		<table border="1" class="table table-striped table-bordered">	
			<tr>
				<th>Employee Name</th><th>Employee Mob No</th><th>Employee Experience</th><th>Status</th><th>select</th>
			</tr>
			
				<c:forEach var="s" items="${sessionScope.employee}">
					<tr>
						<td> ${s.EmployeeName}</td>
						<td>${s.EmployeeMobNo}</td>
						<td>${s.EmployeeExperience}</td>
						<td>${s.Status}</td>
						<td><input type="checkbox" value="${s.EmpId}" name="employee"></td>
					</tr>
				</c:forEach>
			
	
			</table>
				

			<input type="submit" class="btn btn-success value="submit">
		</div>

	</sf:form>
 
</div>

</body>
</html>