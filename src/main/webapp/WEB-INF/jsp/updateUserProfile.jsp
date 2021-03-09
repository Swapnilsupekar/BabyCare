<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common-css-js.jsp"%>
<jsp:include page="common-header-user.jsp"></jsp:include>

   <%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="row">
 <div class="mx-auto">
       <div>
       <br>
        <br>
	               <c:if test="${u==1 }">
						<div class=" alert alert-success mt-2">Profile Updated Successfully
					</c:if>

					<c:if test="${u==0 }">
						<div class="alert alert-warning">Updatation Failed</div>
					</c:if>
					
					<c:if test="${u==3 }">
						<div class="alert alert-success">unable to update</div>
					</c:if>
					
					<c:if test="${u==2 }">

						<form action="upd-user" method="post" class=""
							style="border: 2px solid green; background-color: white; padding: 20px; border-radius: 20px">

							<div>
								<center><h6>
									Update profile
								</h6></center>
							</div>
							<div>
								<input name="id" type="hidden" value="${user.ptId}" readonly />
							</div>
							<div>
							 <input type="hidden" name="username" value="${user.ptUsername}" readonly />
							</div>
							<div>
							   <input type="hidden" name="password" value="${user.ptPassword}" readonly />
							</div>
							<div class="mt-1">
								Name:<input name="ptName" class="form-control form-control-md"
									type="text" value="${user.ptName}"  pattern="[A-Za-z\s]{1,40}" required autocomplete="off" title="only characters are allowed"/>
							</div>
							<div class="mt-1">
								Age:<input name="age" class="form-control form-control-md"
									type="text" value="${user.ptAge}" Pattern= "[0-9]{1,2}" required autocomplete="off" title="entered age not valid"/>
							</div>
							<div class="mt-1">
								Email: <input name="ptGmail" class="form-control form-control-md"
									type="email" value="${user.ptGmail}" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{3}$" required autocomplete="off" title="enter valid email"/>
							</div>
							<div class="mt-1">
								Mobile: <input name="ptMobile"
									class="form-control form-control-md" type="text"
									value="${user.ptMobile}" Pattern= "[789][0-9]{9}" required autocomplete="off" title="enter valid mobile no"/>
							</div>
							
							<div class="mt-1">
							
							
							
							UserName<input class="form-control form-control-md" type="text" name="ptUsername" value="${user.ptUsername}"  pattern="[A-Za-z0-9]{1,15}"required autocomplete="off" title="Username only contains characters & numbers.."/>
							</div>
							<div class="mt-1">
			Password<input class="form-control form-control-md"  type="password" name="ptPassword" value="${user.ptPassword}"  pattern="[A-Za-z0-9]{1,10}"required autocomplete="off" title="Password only contains characters & numbers.."/>
			</div>
							<div class="mt-2">
								<input class="btn btn-success btn-block" type="submit"
									value="Save" />
							</div>
							<div class="mt-2">
								<input class="btn btn-success btn-block" type="reset"
									value="Cancel" />
							</div>
						</form>
						
						
					</c:if>
					</div>
					</div>
</div>
    
    
    
</body>
</html>