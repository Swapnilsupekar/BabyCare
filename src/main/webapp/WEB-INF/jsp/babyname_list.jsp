<%@ include file="common-css-js.jsp"%>
<%@ include file="AddDetails.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BabyNames</title>


</head>
<body>

	<div class="container-fluid">

	</div>
	<div class="container">
	<center>
		<h2>Baby Names</h2></center>
		<table class="table table-striped table-bordered">
			<thead>

				<th scope="row">Baby Names</th>
				<th scope="row">Meaning</th>
				<th scope="row">Gender</th>
				<th scope="row">Update Action</th>
				<th scope="row">Delete Action</th>
			</thead>
			<tbody>
				<c:forEach items="${babyname }" var="article">
					<tr>

						<td>${article.name }</td>
						<td>${article.meaning }</td>
						<td>${article.sex }</td>
						<td><spring:url value="/updatebabyname/${article.id }"
								var="updateURL" /> <a class="btn btn-success"
							href="${updateURL }" role="button">Update</a></td>
						<td><spring:url value="/deletebabyname/${article.id }"
								var="deleteURL" /> <a class="btn btn-success"
							href="${deleteURL }" role="button">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
			<spring:url value="/addbabyname" var="addURL" />
			<a class="btn btn-success" href="${addURL }" role="button">Add
				New BabySitter<a>
		</table>
	</div>
</body>
</html>