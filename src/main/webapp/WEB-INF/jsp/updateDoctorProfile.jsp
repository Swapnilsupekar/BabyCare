<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common-css-js.jsp"%>
<jsp:include page="common-header-doctor.jsp"></jsp:include>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


		<br>
		<div class="row">

			<div class="mx-auto">

				<c:if test="${drprofile==1 }">
					<div class="alert alert-success">doctor Profile Updated
						Successfully</div>
				</c:if>

				<c:if test="${drprofile==0 }">
					<div class="alert alert-warning">doctor Profile Updatation
						Failed</div>
				</c:if>


				<c:if test="${drprofile==2 }">

					<form action="updateDr" method="post" class=""
						style="border: 2px solid green; background-color: white; padding: 20px; border-radius: 20px">

						<div class="mt-2">
							<center>
								<h6>
									<i>Update Doctor Profile</i>
								</h6>
						</div>
						</center>
						<br>


						
						<div>
							<input name="id" type="hidden" value="${doctor.drId}" readonly />
						</div>





						<%-- <div class="form-group row"> 
					<label for="drname" class="col-sm-3 col-form-label"> Doctor Name</label> 
					     
					      <div class="col-sm-8"> <input name="drName" class="form-control form-control-sm"
							type="text" value="${drOldInfo.drName}"  pattern="[A-Za-z\s]{1,40}" required autocomplete="off" title="only characters are allowed"/>
							</div>
					</div> --%>


						<div class="form-group">
							Doctor Name <input name="drName"
								class="form-control form-control-sm" type="text"
								value="${doctor.drName}" pattern="[A-Za-z\s]{1,40}" required
								autocomplete="off" title="only characters are allowed" />
						</div>


						<div class="form-group">
							Specification <input name="drSpec"
								class="form-control form-control-sm" type="text"
								value="${doctor.drSpec}" pattern="[A-Za-z\s]{1,40}" required
								autocomplete="off" title="only characters are allowed" />
						</div>

						<div class="form-group">
							Email <input name="drEmail" class="form-control form-control-sm"
								type="email" value="${doctor.drEmail}"
								pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{3}$" required
								autocomplete="off" title="enter valid email" />
						</div>
						<div class="form-group">
							Mobile <input name="drMobile"
								class="form-control form-control-sm" type="text"
								value="${doctor.drMobile}" Pattern="[789][0-9]{9}" required
								autocomplete="off" title="enter valid mobile no" />
						</div>
						<div class="form-group">
							Username <input name="drUsername"
								class="form-control form-control-sm" type="text"
								value="${doctor.drUsername}" pattern="[A-Za-z0-9]{1,15}"
								required autocomplete="off"
								title="only 15 characters & numbers allowed" />
						</div>
						<div class="form-group">
							Password<input name="drPassword"
								class="form-control form-control-sm" type="text"
								value="${doctor.drPassword}" pattern="[A-Za-z0-9]{1,10}"
								required autocomplete="off"
								title="only 10 characters & numbers allowed" />
						</div>
						<div class="mt-2">
							<input class="btn btn-success btn-block" type="submit"
								value="Save" />
						</div>
						<div class="mt-2 mb-3">
							<input class="btn btn-success btn-block" type="reset"
								value="Cancel" />
						</div>

					</form>
				</c:if>
			</div>
		</div>

	
	
	</body>
	</html>