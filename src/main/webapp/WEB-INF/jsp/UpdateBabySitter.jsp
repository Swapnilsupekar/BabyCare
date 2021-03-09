<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common-css-js.jsp"%>
<%@ include file="AddDetails.jsp"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Update BabySitter</title>

</head>
</head>

<body>
	<div class="container">

		<spring:url value="/savebabysitter" var="saveURL" />
		<center><h4>BabySitter</h4></center>
		
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

		</form:form>

	</div>
</body>
</html>

