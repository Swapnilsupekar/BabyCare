<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ include file="common-css-js.jsp"%>
<%@ include file="AddDetails.jsp"%>

<html>
<head>
<title>Baby Names</title>


</head>

<div class="container-fluid">

</div>

<body>
	<div class="container-fluid">
		<div class="babyname">
			<spring:url value="/savebabyname" var="saveURL" />
			<h2>BabySitter</h2>
			<form:form modelAttribute="babyname" method="post"
				action="${saveURL }" cssClass="form">
				<form:hidden path="id" />
				<div class="form-group">
					<label>Beby Name</label>
					<form:input path="name" cssClass="form-control" id="name" />
				</div>
				<div class="form-group">
					<label>Meaning</label>
					<form:input path="meaning" cssClass="form-control" id="meaning" />
				</div>
				<div class="form-group">
					<label>Gender</label>
					<form:input path="sex" cssClass="form-control" id="sex" />
				</div>
				
				<button type="submit" class="btn btn-success">Save</button>
				</a>
				<a href='babynamelist' class='btn btn-success' role='button' id="button">Back</a>

			</form:form>
</div>
		</div>
</body>
</html>

