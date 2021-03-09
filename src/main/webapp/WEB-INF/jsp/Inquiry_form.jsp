
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common-css-js.jsp"%>
<jsp:include page="common-header.jsp"></jsp:include>
<html>

<title>Contact Us</title>

</head>

<style>
/*add full-width input fields*/
input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 2px solid #ccc;
	box-sizing: border-box;
}
/* set a style for all buttons*/
button {
	background-color: Green;
	color: white;
	padding: 15px 20px;
	margin: 8px 0;
	cursor: pointer;
	width: 100%;
}
/*set styles for the cancel button*/
.cancelbtn {
	padding: 15px 20px;
	background-color: #FF2E00;
}
/*float cancel and signup buttons and add an equal width*/
.cancelbtn, .signupbtn {
	float: left;
	width: 50%;
}
/*add padding to container elements*/
.container {
	padding: 16px;
}
/*clear floats*/
.clearfix::after {
	content: "";
	clear: both;
	display: table;
}
/*styles for cancel button and signup button 
	on extra small screens*/
@media screen and (max-width: 300px) {
	.cancelbtn, .signupbtn {
		width: 100%;
	}
}
</style>

<body>
	<center><h1>Fill the form to contact us...!!</h1></center>
	<div id="signup">
		<form action="/saveinquiry" method="post">
			<div class="container">
				<div class="field-wrap">

					<input type="text" name="users_name" placeholder="Enter fullname"
						pattern="[A-Za-z.\s]{1,}" required autocomplete="off"
						title="Fullname should only contain letters..!" />
				</div>
				<div class="field-wrap">

					<div class="field-wrap">

						<input type="text" name="email" placeholder="Enter  email"
							pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required
							autocomplete="off" title="Follow email pattern.." />
					</div>

					<div class="field-wrap">

						<input type="text" name="mobile" placeholder="Enter mobile Number"
							Pattern="[789][0-9]{9}" required autocomplete="off"
							title="Mobile number should be 10 digit..!" />
					</div>

					<div class="field-wrap">

						<input type="text" name="subject" placeholder="Subject "
							pattern="[A-Za-z]{1,}" required autocomplete="off"
							title="Enter letters only..." />
					</div>
					<div class="field-wrap">

						<input type="text" name="detail_Description"
							placeholder="Put Your Message Here...!!" required
							autocomplete="off" />
					</div>


					<button type="submit" class="button button-block" />
					Send Inquiry
					</button>
				</div>
		</form>
</body>
</html>