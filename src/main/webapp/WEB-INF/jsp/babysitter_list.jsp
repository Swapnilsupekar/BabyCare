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
<title>BabySitters</title>


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
	<div class="container">
	<center>
		<h2>BabySitter</h2></center>
		<table class="table table-striped table-bordered">
			<thead>

				<th scope="row">BabySitter Name</th>
				<th scope="row">Adreess</th>
				<th scope="row">Mobile</th>
				<th scope="row">Year Of Experiance</th>
				<th scope="row">Fees</th>
				<th scope="row">Update Action</th>
				<th scope="row">Delete Action</th>
			</thead>
			<tbody>
				<c:forEach items="${articleList }" var="article">
					<tr>

						<td>${article.name }</td>
						<td>${article.address }</td>
						<td>${article.mobile }</td>
						<td>${article.years }</td>
						<td>${article.fees }</td>
						<td><spring:url value="/updatebebysitter/${article.id }"
								var="updateURL" /> <a class="btn btn-success"
							href="${updateURL }" role="button">Update</a></td>
						<td><spring:url value="/deletebabysitter/${article.id }"
								var="deleteURL" /> <a class="btn btn-success"
							href="${deleteURL }" role="button">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
			<spring:url value="/addbabysitter" var="addURL" />
			<a class="btn btn-success" href="${addURL }" role="button">Add
				New BabySitter<a>
		</table>
	</div>
</body>
</html>