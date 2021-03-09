<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ include file="common-css-js.jsp"%>
<%@ include file="AddDetails.jsp"%>

<html>
<head>
<title>BabySitter</title>


</head>

<div class="container-fluid">
	<%
	HttpSession session1 = request.getSession(false);
	if (session == null || session.getAttribute("adminlogin") == null) {

	} else {
	%>
	<%
	}
	%>
</div>

<body>
	<div class="container-fluid">
		<div class="babyname">
			<spring:url value="/savebabysitter" var="saveURL" />
			<h2>BabySitter</h2>
			<form:form modelAttribute="articleForm" method="post"
				action="${saveURL }" cssClass="form">
				<form:hidden path="id" />
				<div class="form-group">
					<label>BebySitter Name</label>
					<form:input path="name" cssClass="form-control" id="name" />
				</div>
				<div class="form-group">
					<label>Address</label>
					<form:input path="address" cssClass="form-control" id="address" />
				</div>
				<div class="form-group">
					<label>Year Of Experiance</label>
					<form:input path="years" cssClass="form-control" id="years" />
				</div>
				<div class="form-group">
					<label>Mobile</label>
					<form:input path="mobile" cssClass="form-control" id="mobile" />
				</div>
				<div class="form-group">
					<label>Fees</label>
					<form:input path="fees" cssClass="form-control" id="fees" />
				</div>
				<button type="submit" class="btn btn-success">Save</button>
				</a>
				<a href='list' class='btn btn-success' role='button' id="button">Back</a>

			</form:form>
</div>
		</div>
</body>
</html>

