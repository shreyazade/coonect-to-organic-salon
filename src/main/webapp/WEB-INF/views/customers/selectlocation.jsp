<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Shop Location List</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style>
body {
  background-image: url('/image/location.png');
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

<div class="container">
  <sf:form method="post" action="selectshop">
<caption><h2>Select Location</h2></caption>
<div  >

		
		<select name="locations">
		<c:forEach var="locations" items="${requestScope.locations_list}">
			<option value="${locations}">${locations}</option><br>
		</c:forEach>
		</select>
	</div>
	<br/>
	<input type="submit" class="btn btn-success" value="submit">
	</sf:form>
 
</div>
	
<!-- 	<div class="container">
    <div class="row">
        <div class="col">
            <div class="card">
                <img src="/image/fp1.jpg" class="card-img-top">
               
              </div>
        </div>
        <div class="col">
            <div class="card">
                <img src="/image/fp5.jpg" class="card-img-top" >
               
              </div>
        </div>
        <div class="col">
            <div class="card">
                <img src="/image/fp7.jpg" class="card-img-top">
               
                 
              </div>
        </div>
    </div>
    </div>-->
  
	<%-- <caption><h2>Select Area</h2></caption>
<div  >
		<select name="areas">
		<c:forEach var="areas" items="${requestScope.areas_list}">
			<option value="${areas}">${areas}</option><br>
		</c:forEach>
		</select>
	</div> --%>
	

</body>

</html>
