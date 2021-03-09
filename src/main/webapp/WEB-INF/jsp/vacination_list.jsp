<%@ include file="common-css-js.jsp"%>
<%@ include file="AddDetails.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<title>Vaccinations Details</title>

</head>
<body>

	<div class="container-fluid"></div>
	<div class="container">
	<center>
		<h2>Vaccinations Details</h2></center>
		<table class="table table-striped table-bordered">
			<thead>

				<th scope="row">Vaccinations Age Group</th>
				<th scope="row">Vaccinations Date</th>
				<th scope="row">Vaccinations Time</th>
				<th scope="row">Vaccinations Name</th>
				<th scope="row">Description</th>
				<th scope="row">Location</th>
				<th scope="row">Camp By</th>
				<th scope="row">Update Action</th>
				<th scope="row">Delete Action</th>
			</thead>
			<tbody>
				<c:forEach items="${articleList }" var="article">
					<tr>

						<td>${article.age_group}</td>
						<td>${article.vaccination_date}</td>
						<td>${article.vaccination_time}</td>
						<td>${article.vaccination_name}</td>
						<td>${article.vaccination_description }</td>
						<td>${article.vaccination_camp_place}</td>
						<td>${article.vaccination_camp_by }</td>
						<td><spring:url value="/updatevaccination/${article.id }"
								var="updateURL" /> <a class="btn btn-success"
							href="${updateURL }" role="button">Update</a></td>
						<td><spring:url value="/deletevaccination/${article.id }"
								var="deleteURL" /> <a class="btn btn-success"
							href="${deleteURL }" role="button">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
			<spring:url value="/addvaccination" var="addURL" />
			<a class="btn btn-success" href="${addURL }" role="button">Add
				New Vaccinations Details<a>
		</table>

	</div>
</body>
</html>