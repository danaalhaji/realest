<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>Realest</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="keywords" />
<meta content="" name="description" />
<base href="/">

<!-- Bootstrap CSS File -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="css/style.css" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
	rel="stylesheet" />
<link href="img/favicon1.png" rel="icon" />
<link href="img/apple-touch-icon.png" rel="apple-touch-icon" />
<!-- Libraries CSS Files -->
<link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
<link href="lib/animate/animate.min.css" rel="stylesheet" />
<link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet" />
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet" />
<!-- JavaScript Libraries -->
<script src="lib/jquery/jquery.min.js" defer></script>
<script src="lib/jquery/jquery-migrate.min.js" defer></script>
<script src="/webjars/jquery/jquery.min.js" defer></script>
<script src="lib/scrollreveal/scrollreveal.min.js" defer></script>
<script src="lib/owlcarousel/owl.carousel.min.js" defer></script>
<script type="text/javascript" src="js/main.js" defer></script>
<script src="lib/popper/popper.min.js" defer></script>
<script src="lib/bootstrap/js/bootstrap.min.js" defer></script>
<script src="lib/easing/easing.min.js" defer></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js" defer></script>
<script src="./libs/jquery/1.10.1/jquery.min.js"></script>
</head>
<body>
	<div class="click-closed"></div>
	<!--/ Form Search Star /-->
	<div class="box-collapse">
		<div class="title-box-d">
			<h3 class="title-d">Search Property</h3>
		</div>
		<span class="close-box-collapse right-boxed ion-ios-close"></span>
		<div class="box-collapse-wrap form">
			<form class="form-a">
				<div class="row">
					<div class="col-md-12 mb-2">
						<div class="form-group">
							<label for="Type">Location</label> <input type="text"
								class="form-control form-control-lg form-control-a"
								placeholder="Location" />
						</div>
					</div>
					<div class="col-md-6 mb-2">
						<div class="form-group">
							<label for="Type">Starting Price</label> <input type="number"
								class="form-control form-control-lg form-control-a"
								placeholder="Starting Price" />
						</div>
					</div>
					<div class="col-md-6 mb-2">
						<div class="form-group">
							<label for="Type">Ending Price</label> <input type="number"
								class="form-control form-control-lg form-control-a"
								placeholder="Ending Price" />
						</div>
					</div>
					<div class="col-md-6 mb-2">
						<div class="form-group">
							<label for="Type">Starting Area</label> <input type="number"
								class="form-control form-control-lg form-control-a"
								placeholder="Starting Area" />
						</div>
					</div>
					<div class="col-md-6 mb-2">
						<div class="form-group">
							<label for="Type">Ending Area</label> <input type="number"
								class="form-control form-control-lg form-control-a"
								placeholder="Ending Area" />
						</div>
					</div>
					<div class="col-md-6 mb-2">
						<div class="form-group">
							<label for="bathrooms">Status</label> <select
								class="form-control form-control-lg form-control-a"
								id="bathrooms">
								<option>Under Construction</option>
								<option>Move-in ready</option>
							</select>
						</div>
					</div>
					<div class="col-md-6 mb-2">
						<div class="form-group">
							<label for="price">Payment method</label> <select
								class="form-control form-control-lg form-control-a" id="price">
								<option>Cash</option>
								<option>Loans</option>
								<option>Cheques</option>
							</select>
						</div>
					</div>
					<div class="col-md-12">
						<button type="submit" class="btn btn-b">Search Property</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!--/ Form Search End /-->

	<!--/ Nav Star /-->
	<nav
		class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
		<div class="container">
			<button class="navbar-toggler collapsed" type="button"
				data-toggle="collapse" data-target="#navbarDefault"
				aria-controls="navbarDefault" aria-expanded="false"
				aria-label="Toggle navigation">
				<span></span> <span></span> <span></span>
			</button>
			<a class="navbar-brand text-brand" href="/">Real<span
				class="color-b">est</span></a>
			<button type="button"
				class="btn btn-link nav-search navbar-toggle-box-collapse d-md-none"
				data-toggle="collapse" data-target="#navbarTogglerDemo01"
				aria-expanded="false">
				<span class="fa fa-search" aria-hidden="true"></span>
			</button>
			<div></div>
			<div class="navbar-collapse collapse d-flex flex-row-reverse"
				id="navbarDefault">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active" href="/">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="/about">About</a>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="/companyProperty">Our Property</a></li>
					<li class="nav-item"><a class="nav-link" href="/companyLeads">Our
							Leads</a></li>
					<li class="nav-item"><a class="nav-link" href="new/project">Add
							Property</a></li>
					<li class="nav-item"><c:if test="${company_id != null}">
							<a href="/logoutcustomer" class="btn btn-dark btn-sm btn-block mt-2">Sign
								out</a>
						</c:if></li>
				</ul>
			</div>
			<button type="button"
				class="btn btn-b-n navbar-toggle-box-collapse d-none d-md-block"
				data-toggle="collapse" data-target="#navbarTogglerDemo01"
				aria-expanded="false">
				<span class="fa fa-search" aria-hidden="true"></span>
			</button>
		</div>
	</nav>


	<main style="margin-top: 20%; width: 40%;" class="container">
	<h2 class="mb-3 text-center" >New Leads</h2>
		<section class="trees-users-table">
			<table class="table table-striped table-bordered">
				<thead>
					<tr class="table-success">
						<th scope="col">Lead</th>
						<th scope="col">Phone Number</th>
						<th scope="col">Email</th>
						<th scope="col">Status</th>
					</tr>
				</thead>
				<tbody>
  <c:forEach var="app" items="${appointemnt}">
    <tr>
      <td>${app.customer.fullName}</td>
      <td>${app.customer.uPhoneNum}</td>
      <td>${app.customer.email}</td>      
      <td><a href="/company/app/process">${app.proccess}</a></td>        
    </tr>
    </c:forEach>

				</tbody>
			</table>
		</section>
	</main>
	


	<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
	<div id="preloader"></div>
</body>
</html>