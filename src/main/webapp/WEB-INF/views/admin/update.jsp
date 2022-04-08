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
      <li class="active"><a href="/admin/shopsdetails">Home</a></li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
           <li><a href="<spring:url value='/user/login'/>">Log Out</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
<sf:form method="post" modelAttribute="shops">
		<table border="1" class="table table-striped table-bordered">

					
			
					<tr>
						<td>Enter Shop Name</td>
						<td><input type="text" name="shopName"  value="${requestScope.shop_detalis.shopName}"/></td>
					</tr>


					<tr>
						<td>Enter Owner Name</td>
						<td><input type="text" name="ownerName" value="${requestScope.shop_detalis.ownerName}"/></td>
					</tr>

					<tr>
						<td>Enter location</td>
						<td><input type="text" name="locations" value="${requestScope.shop_detalis.locations}" /></td>
					</tr>
					<tr>
						<td>Enter Area</td>
						<td><input type="text" name="areas" value="${requestScope.shop_detalis.areas}" /></td>
					</tr>
					<tr>
						<td>Enter Address</td>
						<td><input type="text" name="addresses" value="${requestScope.shop_detalis.addresses}" /></td>
					</tr>
					<tr>
						<td>Enter Status</td>
						<td><input type="text" name="status" value="${requestScope.shop_detalis.status}" /></td>
					</tr>
					
			


			<tr>
				<td><input type="submit" value="Update" /></td>
			</tr>

		</table>
	</sf:form>
</div>

</body>
</html>
