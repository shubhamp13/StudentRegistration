document.addEventListener('DOMContentLoaded', function() {
	const form = document.querySelector("#registrationForm");
	const nameError = document.querySelector("#nameError");
	const emailError = document.querySelector("#emailError");
	const phoneError = document.querySelector("#phoneNoError");
	const genderError = document.querySelector("#genderError");
	const subjectError = document.querySelector("#subjectError");
	const termsError = document.querySelector("#termsError");
	const passwordError = document.querySelector("#passwordError");

	function validateName() {
		const name = form['fullName'].value;
		const hasNumber = /\d/;
		if (name.trim() === '' || hasNumber.test(name)) {
			nameError.innerText = "*Please Enter Your Full Name Without Numbers";
			return false;
		}
		else {
			nameError.innerText = "";
			return true;
		}

	}
	function validateEmail() {
		const email = form['email'].value;
		const hasEmail = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
		if (email.trim() === '' || !hasEmail.test(email)) {
			emailError.innerText = "*Please Enter Correct Email Id";
			return false;
		}
		else {
			emailError.innerText = "";
			return true;
		}

	}
	function validatePassword() {
		const password = form['password'].value;
		const regex = /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&#])[A-Za-z\d@$!%*?&#]{8,}$/;
		if (password.trim() === '' || !regex.test(password)) {
			passwordError.innerText = "Password Must Contain  At least one uppercase letter, one lowercase letter, one digit, one special character, and minimum 8 characters";
			return false;
		}
		else {
			passwordError.innerText = "";
			return true;
		}
	}
	function validatePhone() {
		const phoneNo = form['phoneNo'].value;
		const phonePattern = /^\d{10}$/;
		if (phoneNo.trim() === "" || !phonePattern.test(phoneNo)) {
			phoneError.innerText = "*Please Enter Correct Phone Number";
			return false;
		}
		else {
			phoneError.innerText = "";
			return true;
		}
	}
	function validateGender() {
		const gender = form['gender'];
		if (![...gender].some(radio => radio.checked)) {
			genderError.innerText = "*Please Select At Least One Option";
			return false;
		}
		else {
			genderError.innerText = "";
			return true;
		}
	}
	function validateSubject() {
		const subject = form['subject'];
		if (![...subject].some(radio => radio.checked)) {
			subjectError.innerText = "*Please Kindly Select At Least one subject";
			return false;
		}
		else {
			subjectError.innerText = "";
			return true;
		}
	}
	function validateTerms() {
		const check = form['checkTerms'];
		if (!check.checked) {
			termsError.innerText = "*Please Select Terms and conditions";
			return false;
		}
		else {
			termsError.innerText = "";
			return true;
		}
	}
	form['fullName'].addEventListener('input', validateName);
	form['email'].addEventListener('input', validateEmail);
	form['phoneNo'].addEventListener('input', validatePhone);
	form['gender'].forEach(element => {
		element.addEventListener('change', validateGender)
	});
	form['password'].addEventListener('input', validatePassword);
	form['subject'].forEach(element => {
		element.addEventListener('change', validateSubject)
	});
	form['checkTerms'].addEventListener('change', validateTerms);
	form.addEventListener('submit', function(event) {
		let isValid = true;
		if (!validateName()) {
			isValid = false;
		}
		if (!validateEmail()) {
			isValid = false;
		}
		if (!validateGender()) {
			isValid = false;
		}
		if (!validatePhone()) {
			isValid = false;
		}
		if (!validateSubject()) {
			isValid = false;
		}
		if (!validateTerms()) {
			isValid = false;
		}
		if (!validatePassword()) {
			isValid = false;
		}
		if (!isValid) {
			event.preventDefault();
		}
	})
})