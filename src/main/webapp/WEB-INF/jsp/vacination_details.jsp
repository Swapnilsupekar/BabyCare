<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common-css-js.jsp"%>
<jsp:include page="common-header.jsp"></jsp:include>
<html>

<body>

	<div class="container">
		<center>
			<h2>Vaccinations Details</h2>
			<form th:action="@{/}">
				Filter: <input type="text" name="keyword" id="keyword" size="50"
					th:value="${keyword}" required /> &nbsp; <input  class="btn btn-success"type="submit"
					value="Search" /> &nbsp;
				<button type="button"  class="btn btn-default">
					<a href='vaccinationdetails' role='button' class="btn btn-success" id="button">Clear</a>
				</button>

			</form>
		</center>

		<table class="table table-striped table-bordered">
			<thead>

				<th scope="row">Vaccinations Age Group</th>
				<th scope="row">Vaccinations Date</th>
				<th scope="row">Vaccinations Time</th>
				<th scope="row">Vaccinations Name</th>
				<th scope="row">Description</th>
				<th scope="row">Location</th>
				<th scope="row">Camp By</th>
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
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>