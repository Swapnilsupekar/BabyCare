<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common-css-js.jsp"%>
<jsp:include page="common-header.jsp"></jsp:include>
<html>

<body>
	<div class="container">
		<center>
			<h2>BabyNames</h2>
			<form th:action="@{/}">
				Filter: <input type="text"  name="keyword" id="keyword" size="50"
					th:value="${keyword}" required /> &nbsp; <input  class="btn btn-success" type="submit"
					value="Search" /> &nbsp;
				<button type="button" class="btn btn-default" >
					<a href='babynamedetails' role='button' id="button" type="button" class="btn btn-success">Clear</a>
				</button>

			</form>
		</center>


		<div class="container" id="babaydetails">
			<table class="table table-striped table-bordered">
				<thead>

					<th scope="row">Baby Names</th>
					<th scope="row">Meaning</th>
					<th scope="row">Gender</th>
				</thead>
				<tbody>
					<c:forEach items="${babynames}" var="article">
						<tr>

							<td>${article.name }</td>
							<td>${article.meaning }</td>
							<td>${article.sex }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>