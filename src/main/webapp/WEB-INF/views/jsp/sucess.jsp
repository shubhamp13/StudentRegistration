<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="bg-dark">
	<%@ include file="navbar.jsp"%>
	<div class="d-flex justify-content-center mt-5">
		<div class="card text-center w-50">
			<div class="card-header fs-3" style="background-color: #ba68c8">Student
				Registration System</div>
			<div class="card-body">
				<h4 class="card-title">Thanks For Registration With Us</h4>
				<h5>Welcome to the Student Registration Portal
					${student.getFullName()}</h5>
				<p>Thank you for joining us! Please proceed with the
					registration process to complete your details.</p>

				<a href="form" class="btn btn-primary mb-3">Click Here To
					Register </a>
			</div>
			<div class="card-footer text-body-secondary">&copy; Copyright
				2024</div>
		</div>
	</div>
</body>
</html>
