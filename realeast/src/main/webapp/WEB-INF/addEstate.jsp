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
<title>Realest</title>
<base href="/">
<link rel="stylesheet" type="text/css" href="css/style2.css">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
</head>
<style>
#newProject {
width: 50%;
}
</style>
<body class="pt-3">
	<main class="registerForm specialH">
		<h1 class="mb-2	">Add Real Estate</h1>
		
		
		<form:form action="/addestate" method="post" modelAttribute="newProject">
			<div class="form-group">
				<form:input path="proName" class="specialInput"
					placeholder="Estate Name" />
				<form:errors path="proName" class="text-danger" />
			</div class="form-group">
			<div>
				<form:input path="description" class="specialInput"
					placeholder="Estate Description" />
				<form:errors path="description" class="text-danger" />
			</div>
			<div class="form-group">
				<form:input path="numberOfUnits" class="specialInput"
					placeholder="Number of Units" />
				<form:errors path="numberOfUnits" class="text-danger" />
			</div>
			<div class="form-group">
				<form:input path="satrtingPrice" class="specialInput"
					placeholder="Starting Price" />
				<form:errors path="satrtingPrice" class="text-danger" />
			</div>
			<div class="form-group">
				<form:input path="endingPrice" class="specialInput"
					placeholder="Ending Price" />
				<form:errors path="endingPrice" class="text-danger" />
			</div>
			<div class="form-group">
				<form:input path="satrtingArea" class="specialInput"
					placeholder="Starting Area" />
				<form:errors path="satrtingArea" class="text-danger" />
			</div>
			<div class="form-group">
				<form:input path="endingArea" class="specialInput"
					placeholder="Ending Area" />
				<form:errors path="endingArea" class="text-danger" />
			</div>
			<div class="form-group">
				<form:select name="payment" path="payment" class="specialInput">
				<label>Payment: </label>
					<form:option value="cash">Cash</form:option>
					<form:option value="installment">Installment</form:option>
					<form:errors path="payment" class="text-danger" />
				</form:select>
			</div><div class="form-group">
			
			<label>Address: </label>
				<form:select class="specialInput" path="address">
					<form:option value="-" label="--Please Select" />
					<form:options items="${enumValues}" />
				</form:select>
				<form:errors path="address" class="text-danger" />
			</div>
			<div class="form-group">
				<label>Status: </label>
				<form:select class="specialInput" path="status">
					<form:option value="-" label="--Please Select" />
					<form:options items="${enumValues}" />
				</form:select>
				<form:errors path="status" class="text-danger" />
			</div>
			<button>Add Real Estate</button>

		</form:form>
	</main>

</body>
</html>
