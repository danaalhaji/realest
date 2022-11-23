<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
<div class="container align-items-center" style="margin: 0 auto; width:70%;">
<div>
<div class="d-flex justify-content-around" style="margin-top:50px;">
<p><a href="/add/company">Add Company</a> </p> <p><a href="/customers">All Users</a></p> <p><a href="/admin/companies">All Companies</a> </p>
<p><a href="/dates">All Arranged Appointments </a> </p>
<p><a href="/home">Back to home </a> </p>
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
      <th scope="col">Number Of Estates</th>
      <th scope="col">Contact Number</th>
      <th scope="col">Email</th>
      <th scope="col">Licensed Operator Number</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="com" items="${companies}">
    <tr>
      <td>${com.companyName}</td>
      <td>${com.realEstates.size()}</td>
      <td>${com.phoneNum} </td>
      <td>${com.emailCom}</td>
      <td>${com.licensedOp}</td>             
    </tr>
    </c:forEach>
  </tbody>
</table>
</div>

<table class="table" style="margin-top:50px;">
  <thead class="table-danger">
      <tr>
      <th scope="col">User Name</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="user" items="${allCustomers}">
    <tr>
      <td>${user.fullName}</td>
                  
    </tr>
    </c:forEach>
  </tbody>
</table>
</div>

</body>
</html>
