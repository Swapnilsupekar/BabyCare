<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ include file="common-css-js.jsp"%>
<%@ include file="common-header-doctor.jsp"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div class="row">
		<div class="mx-auto">
			<center>
				<h3 style="color:grey">Doctor Profile</h3>
			

	<img src="/images/adminlogo.png"" alt="" width="100" height="100"/></center>
</center>
			<table class="table table-striped border-dark table-bordered">



				<tr>
					<th>Username</th>

					<td>${doctor.drUsername}</td>
				</tr>

				<tr>
					<th>Name</th>

					<td>${doctor.drName}</td>
				</tr>

				<tr>
					<th>Speciality</th>

					<td>${doctor.drSpec}</td>
				</tr>



<tr>
					<th>Email</th>

					<td>${doctor.drEmail}</td>
				</tr>

<tr>
					<th>Mobile</th>

					<td>${doctor.drMobile}</td>
				</tr>
				
				
				
				<tr>
					<th>Status
					
					
								<form action="editDrStatus" method="post">
									<input type="hidden" name="drid" value="${doctor.drId}" readonly />
									<button class="btn btn-sm btn-success" type="submit">Change</button>
								</form>

					</th>
					
					 <td>  <c:if test="${doctor.drStatus==true}">  Available</c:if>		
                  <c:if test="${doctor.drStatus==false}">  Not Available</c:if>	
                
                  </td>
				</tr>

			</table>

		</div>

	</div>




</body>
</html>