
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common-css-js.jsp"%>
<jsp:include page="AddDetails.jsp"></jsp:include>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inquiries</title>

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
		<center><h4> Inquiries</h4></center>
		<table class="table table-striped table-bordered">
			<thead>

				<th scope="row">Name</th>
				<th scope="row">Mobile</th>
				<th scope="row">Email</th>
				<th scope="row">Subject</th>
				<th scope="row">Description</th>
				<th scope="row">Action</th>
			</thead>

			<tbody>
				<c:forEach items="${articleList }" var="article">
					<tr>

						<td>${article. users_name }</td>
						<td>${article.email }</td>
						<td>${article.mobile}</td>
						<td>${article.subject}</td>
						<td>${article.detail_Description}</td>
						<td><spring:url value="/deleteinquiry/${article.id }"
								var="deleteURL" /> <a class="btn btn-success"
							href="${deleteURL }" role="button">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>