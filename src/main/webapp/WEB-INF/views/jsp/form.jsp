<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>

<body class="bg-black text-white">
	<%@ include file="navbar.jsp"%>

	<div
		class="d-flex flex-column justify-content-center align-items-center p-5 fs-6 ">
		<div class="w-50 p-4 border border-warning border-4">

			<h1 class="text-center">Registration Form</h1>



			<form action="processForm" method="post" id="registrationForm">
				<div class="mb-3">
					<label for="inputName" class="form-label">Enter Your Full
						Name</label> <input type="text" name="fullName"
						class="form-control w-80 p-2" id="inputName">
					<div id="nameError" class="text-danger"></div>
				</div>

				<div class="mb-3">
					<label for="inputEmail" class="form-label">Email address</label> <input
						type="email" name="email" class="form-control p-2" id="inputEmail">
					<div id="emailError" class="text-danger"></div>
					<div id="emailHelp" class="form-text text-white">We'll never
						share your email with anyone else.</div>
				</div>
				<div class="mb-3">
					<label for="inputPassword" class="form-label">Password</label> <input
						type="password" name="password" class="form-control p-2"
						id="inputPassword">
					<div id="passwordError" class="text-danger"></div>
					<div id="passwordHelp" class="form-text text-white">We'll
						never share your password with anyone else.</div>
				</div>

				<div class="mb-3">
					<label class="form-label px-3">Gender</label>

					<div class="form-check form-check-inline px-4">
						<input class="form-check-input" type="radio" name="gender"
							id="maleRadio" value="Male"> <label
							class="form-check-label" for="maleRadio">Male</label>
					</div>

					<div class="form-check form-check-inline px-4">
						<input class="form-check-input" type="radio" name="gender"
							id="femaleRadio" value="Female"> <label
							class="form-check-label" for="femaleRadio">Female</label>
					</div>

					<div class="form-check form-check-inline px-4">
						<input class="form-check-input" type="radio" name="gender"
							id="otherRadio" value="Other"> <label
							class="form-check-label" for="otherRadio">Other</label>
					</div>
					<div class="text-danger" id="genderError"></div>
				</div>

				<div class="mb-3">
					<label for="inputPhoneNo" class="form-label">Phone No</label> <input
						type="tel" name="phoneNo" class="form-control p-2"
						id="inputPhoneNo">
					<div id="phoneNoError" class="text-danger"></div>
				</div>

				<div class="mb-3">
					<label for="inputAddress" class="form-label">Address</label> <input
						type="text" class="form-control p-3" id="inputAddress"
						name="address">
					<div id="addressError" class="text-danger"></div>
				</div>

				<div class="mb-3">
					<label class="form-label">Choose Subject</label>

					<div class="form-check form-check mb-3">
						<input class="form-check-input" type="radio" name="subject"
							id="inlineRadio1" value="Web Development"> <label
							class="form-check-label" for="inlineRadio1">Web
							Development</label>
					</div>

					<div class="form-check form-check mb-3">
						<input class="form-check-input" type="radio" name="subject"
							id="inlineRadio2" value="Data Science"> <label
							class="form-check-label" for="inlineRadio2">Data Science</label>
					</div>

					<div class="form-check form-check mb-3">
						<input class="form-check-input" type="radio" name="subject"
							id="inlineRadio3" value="Cloud Computing"> <label
							class="form-check-label" for="inlineRadio3">Cloud
							Computing</label>
					</div>

					<div class="form-check form-check mb-3">
						<input class="form-check-input" type="radio" name="subject"
							id="inlineRadio4" value="Cyber Security"> <label
							class="form-check-label" for="inlineRadio4">Cyber
							Security</label>
					</div>
					<div id="subjectError" class="text-danger"></div>
				</div>

				<div class="mb-3 form-check">
					<input type="checkbox" class="form-check-input" id="exampleCheck1"
						name="checkTerms"> <label class="form-check-label"
						for="exampleCheck1">Accept Terms and Conditions</label>
					<div id="termsError" class="text-danger"></div>
				</div>

				<div class="text-center">
					<button type="submit" class="btn btn-primary btn-lg mx-4">Submit</button>
					<button type="reset" class="btn btn-warning btn-lg mx-4">Reset</button>
				</div>

			</form>
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/resources/js/form.js"></script>
</body>
</html>
