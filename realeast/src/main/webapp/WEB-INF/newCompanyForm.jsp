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
		<form:form action="/company/register" method="post"
			modelAttribute="newCompany">
			<div>
				<form:input path="companyName" class="specialInput"
					placeholder="company name" />
				<form:errors path="companyName" class="text-danger" />
			</div>
			<div>
				<form:input path="emailCom" class="specialInput"
					placeholder="company email" />
				<form:errors path="emailCom" class="text-danger" />
			</div>
			<div>
				<form:input path="phoneNum" class="specialInput"
					placeholder="company phone number" />
				<form:errors path="phoneNum" class="text-danger" />
			</div>
			<div>
				<form:input path="licensedOp" class="specialInput"
					placeholder="licensed Operator" />
				<form:errors path="licensedOp" class="text-danger" />
			</div>
			<div>
				<form:input path="location" class="specialInput"
					placeholder="location" />
				<form:errors path="location" class="text-danger" />
			</div>
			<div>
				<form:password path="passwordCom" class="specialInput"
					placeholder="your password" />
				<form:errors path="passwordCom" class="text-danger" />
			</div>
			<div>
				<form:password path="confirmPass" class="specialInput"
					placeholder="confirm password" />
				<form:errors path="confirmPass" class="text-danger" />
			</div>

			<button>Register</button>
		</form:form>
	</main>

</body>
</html>
