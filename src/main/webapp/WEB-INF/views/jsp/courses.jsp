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
			<div class="card-header fs-3" style="background-color:#ba68c8">Student
				Registration System</div>
			<div class="card-body">
				<h5 class="card-title">Course Details</h5>
				<div class="list-group">
					<a href="https://www.w3schools.com/whatis/"
						class="list-group-item list-group-item-action list-group-item-primary mb-3 fw-bolder"
						aria-current="true" target="_blank">Web Development</a> <a
						href="https://roadmap.sh/ai-data-scientist"
						class="list-group-item list-group-item-action mb-3 list-group-item-secondary fw-bolder"
						target="_blank"> Data Science</a> <a
						href="https://www.guvi.in/blog/cloud-computing-career-roadmap/"
						target="_blank"
						class="list-group-item list-group-item-action mb-3 list-group-item-success fw-bolder">
						Cloud Computing</a> <a href="https://roadmap.sh/cyber-security"
						target="_blank"
						class="list-group-item list-group-item-action mb-3 list-group-item-warning fw-bolder">
						Cyber Security</a>
				</div>
				<a href="form" class="btn btn-primary mb-3">Click Here To
					Register </a>
			</div>
			<div class="card-footer text-body-secondary">&copy; Copyright
				2024</div>
		</div>
	</div>
</body>
</html>
