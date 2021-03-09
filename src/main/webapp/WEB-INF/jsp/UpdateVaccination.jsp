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
<title>Update Vaccination</title>

</head>
<body>

	<div class="container">

		<spring:url value="/savevaccination" var="saveURL" />
		<center><h4>Vaccinations Form</h4></center>
		
		<form:form modelAttribute="articleForm" method="post"
			action="${saveURL }" cssClass="form">
			<form:hidden path="id" />
			<div class="form-group">
				<label>Vaccinations Age Group</label>
				<form:input path="age_group" cssClass="form-control" id="age_group" />
			</div>
			<div class="form-group">
				<label>Vaccinations Date</label>
				<form:input path="vaccination_date" cssClass="form-control"
					id="vaccination_date" />
			</div>
			<div class="form-group">
				<label>Vaccinations Time</label>
				<form:input path="vaccination_time" cssClass="form-control"
					id="vaccination_time" />
			</div>
			<div class="form-group">
				<label>Vaccinations Name</label>
				<form:input path="vaccination_name" cssClass="form-control"
					id="vaccination_name" />
			</div>
			<div class="form-group">
				<label>Description</label>
				<form:input path="vaccination_description" cssClass="form-control"
					id="vaccination_description" />
			</div>
			<div class="form-group">
				<label>Location</label>
				<form:input path="vaccination_camp_place" cssClass="form-control"
					id="vaccination_camp_place" />
			</div>
			<div class="form-group">
				<label>Camp By</label>
				<form:input path="vaccination_camp_by" cssClass="form-control"
					id="vaccination_camp_by" />
			</div>
			<button type="submit" class="btn btn-success">Save</button>

		</form:form>

	</div>

</body>
</html>