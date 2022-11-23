<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Page</title>
</head>
<body>
    <h1>Welcome to the Admin Page <c:out value="${currentUser.username}"></c:out></h1>
    
    
    <div class="container align-items-center" style="margin: 0 auto; width:70%;">
<div>
<div class="d-flex justify-content-around" style="margin-top:50px;">
<p><a href="/add/company">Add Company</a> </p> <p><a href="/customers">All Users</a></p> <p><a href="/companies">All Companies</a> </p>
<p><a href="/dates">All Arranged ِِِAppointments </a> </p>
<form class="d-flex justify-content-around" action="/search/estate">
<label for="exampleDataList" class="form-label">Search by  price</label>
<input class="form-control" id="exampleDataList" placeholder="Type to search..." name="search">
 <button type="submit" class="btn btn-primary mb-3">Search</button>
</form>
</div>
<table class="table" style="margin-top:50px;">
  <thead class="table-danger">
      <tr>
      <th scope="col">Name</th>
      <th scope="col">Description</th>
      <th scope="col">Number Of Units</th>
      <th scope="col">Price Range</th>
      <th scope="col">Areas Range</th>
      <th scope="col">Location</th>
      <th scope="col">Status</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="pro" items="${projects}">
    <tr>
      <td>${pro.proName}</td>
      <td>${pro.description}</td>
      <td>${pro.numberOfUnits}</td>
      <td>${pro.satrtingPrice} - ${pro.endingPrice} $</td>
      <td>${pro.satrtingArea} -${pro.endingArea} </td>
            <td>${pro.address}</td>
      <td>${pro.status}</td>             
    </tr>
    </c:forEach>
  </tbody>
</table>
</div>
</div>

    <form id="logoutForm" method="POST" action="/logout">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input type="submit" value="Logout!" />
    </form>
</body>
</html>