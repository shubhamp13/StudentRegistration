<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

</head>
<body class="bg-black">
	<%@ include file="navbar.jsp"%>
	<div class="d-flex justify-content-center mt-5">
		<div class="card text-center w-50">
			<div class="card-header fs-3 fw-bold"
				style="background-color: #ba68c8">Student Registration System</div>
			<div class="card-body">
				<h3 class="card-title">Welcome to MCA</h3>
				<p class="fs-5 fw-medium">Our system provides an easy and efficient way to register and
					manage your information. Whether you're a new user or returning,
					we’re here to assist you in every step of the process.</p>
				<ul class="list-group text-start">
				<h4>Features</h4>
					<li class="list-group-item mb-3 fw-bold"><i
						class="fas fa-check-circle"></i> Simple and quick registration
						process</li>
					<li class="list-group-item mb-3 fw-bold"><i
						class="fas fa-lock"></i> Secure data management</li>
					<li class="list-group-item mb-3 fw-bold"><i
						class="fas fa-envelope"></i> Automated email confirmation and
						reminders</li>
					<li class="list-group-item mb-3 fw-bold"><i
						class="fas fa-mobile-alt"></i> Mobile-friendly interface</li>
				</ul>


				<ul class="list-group text-start">
					<h4>How To Register</h4>
					<li class="list-group-item mb-3 fw-bolder"><i
						class="fas fa-mouse-pointer"></i>Click the "Register Now" button
						to start your registration.</li>
					<li class="list-group-item mb-3 fw-bolder"><i
						class="fas fa-user-edit mr-4"></i>  Fill in your details such as name,
						email, and contact information.</li>
					<li class="list-group-item mb-3 fw-bolder"><i
						class="fas fa-paper-plane"></i>Submit the form and receive a
						confirmation email.</li>
					<li class="list-group-item mb-3 fw-bolder"><i
						class="fas fa-phone-alt"></i>Our team will contact you soon.</li>
				</ul>
				<a href="form" class="btn btn-primary mb-3">Click Here To
					Register </a>


			</div>
			<div class="card-footer text-body-secondary">&copy; Copyright
				2024</div>
		</div>
	</div>
</body>
</html>