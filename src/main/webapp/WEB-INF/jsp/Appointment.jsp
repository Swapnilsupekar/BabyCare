<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common-css-js.jsp"%>

<%@ include file="common-header-user.jsp"%>
   <%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<c:if test="${userProf==1}">
		<div class="row" >
			<div class="mx-auto">
             				<center><h4 style="color:grey">Profile</h4> 
             				<img src="/images/adminlogo.png"" alt="" width="100" height="100"/></center>
					<table class="table table-striped border-dark table-bordered">
					
						<tr>
							<th><h5>Username:</h5></th>
							<td>
								<h6>${user.ptUsername}</h6>
							</td>
						</tr>
						<tr>
							<th><h5>Name:</h5></th>
							<td>
								<h6>${user.ptName}</h6>
							</td>
						</tr>
						<tr>
							<th>
								<h5>Age:</h5>
							</th>
							<td>
								<h6>${user.ptAge}</h6>
							</td>
						</tr>
						<tr>
							<th>
								<h5>Email:</h5>
							</th>
							<td>
								<h6>${user.ptGmail}</h6>
							</td>
						</tr>
						<tr>
							<th>
								<h5>Mobile:</h5>
							</th>
							<td>
								<h6>${user.ptMobile}</h6>
							</td>
						</tr>
									
						
					</table>
			
               </div>
			</div>

	</c:if>	
	
</body>
</html>