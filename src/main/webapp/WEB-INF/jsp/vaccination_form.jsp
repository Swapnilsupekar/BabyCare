<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ include file="common-css-js.jsp"%>
<jsp:include page="common-header.jsp"></jsp:include>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Vaccinations Form</title>

</head>
<body>


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

<div class="container-fluid">
		<div class="babyname">
			<spring:url value="/savevaccination" var="saveURL" />
		<h2>Vaccinations Form</h2>
		<form:form modelAttribute="articleForm" method="post"
			action="${saveURL }" cssClass="form">
			<form:hidden path="id" />
			<div class="form-group">
				<label>Vaccinations Age Group</label>
				<form:input path="age_group" cssClass="form-control" id="age_group" />
			</div>
			<div class="form-group">
				<label>Vaccinations Date</label>
				<form:input path="vaccination_date" cssClass="form-control" id="vaccination_date" />
			</div>
			<div class="form-group">
				<label>Vaccinations Time</label>
				<form:input path="vaccination_time" cssClass="form-control" id="vaccination_time" />
			</div>
			<div class="form-group">
				<label>Vaccinations Name</label>
				<form:input path="vaccination_name" cssClass="form-control" id="vaccination_name" />
			</div>
			<div class="form-group">
				<label>Description</label>
				<form:input path="vaccination_description" cssClass="form-control" id="vaccination_description" />
			</div>
			<div class="form-group">
				<label>Location</label>
				<form:input path="vaccination_camp_place" cssClass="form-control" id="vaccination_camp_place" />
			</div>
			<div class="form-group">
				<label>Camp By</label>
				<form:input path="vaccination_camp_by" cssClass="form-control" id="vaccination_camp_by" />
			</div>
			<button type="submit" class="btn btn-success">Save</button>
			  <a href='vaccinationlist' class='btn btn-success' role='button' id="button">Back </a>
			
		</form:form>
</div>
	</div>
</body>
</html>

