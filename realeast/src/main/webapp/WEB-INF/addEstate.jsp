<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- c:out ; c:forEach etc. -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<base href="/">

<title>Realest</title>
<link rel="stylesheet" type="text/css" href="css/style2.css">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
</head>
<body>
<h1>Registration</h1>
	<main class="registerForm">
		
		<div class="social-container">
			<a href="https://rpbloggers.com/"><i class="fab fa-facebook-f"></i></a>
			<a href="https://rpbloggers.com/"><i class="fab fa-google-plus-g"></i></a>
			<a href="https://rpbloggers.com/"><i class="fab fa-linkedin-in"></i></a>
		</div>
    <form:form action="/add/project" method="post" modelAttribute="newProject">
        <div class="form-group">
            <label>Name Building:</label>
            <form:input path="proName" class="form-control" />
            <form:errors path="proName" class="text-danger" />
        </div>
        <div class="form-group">
            <label>Description:</label>
            <form:input path="description" class="specialInput" />
            <form:errors path="description" class="text-danger" />
        </div>
        <div class="form-group">
            <label>Number Of Units:</label>
            <form:input path="numberOfUnits" class="specialInput" />
            <form:errors path="numberOfUnits" class="text-danger" />
        </div>
        <div class="form-group">
            <label>Starting Price:</label>
            <form:input path="satrtingPrice" class="specialInput" />
            <form:errors path="satrtingPrice" class="text-danger" />
        </div>
        <div class="form-group">
            <label>Ending Price:</label>
            <form:input path="endingPrice" class="specialInput" />
            <form:errors path="endingPrice" class="text-danger" />
        </div>
        <div class="form-group">
            <label>Starting Area:</label>
            <form:input path="satrtingArea" class="specialInput" />
            <form:errors path="satrtingArea" class="text-danger" />
        </div>
        <div class="form-group">
            <label>Ending Area:</label>
            <form:input path="endingArea" class="specialInput" />
            <form:errors path="endingArea" class="text-danger" />
        </div>
        <div class="form-group">
        <label>Payment:</label>
        <form:select name="payment" path="payment">
  			<form:option value="cash">Cash</form:option>
  			<form:option value="installment">Installment</form:option>
  			<form:errors path="payment" class="text-danger" />
		</form:select>
        </div>
        
         <div class="form-group">
            <label>Address:</label>
    			<form:select path="address">
     			<form:option value="-" label="--Please Select"/>
    		 	<form:options items="${enumValues}" />
				</form:select>
				<form:errors path="address" class="text-danger" />
  		</div>
  		 <div class="form-group">
            <label>Status:</label>
    			<form:select path="status">
     			<form:option value="-" label="--Please Select"/>
    		 	<form:options items="${enumValues}" />
				</form:select>
				<form:errors path="status" class="text-danger" />
  		</div>
        <input type="submit" value="Add A Real Estate" class="btn btn-primary" />
    </form:form>
</main>

</body>
</html>