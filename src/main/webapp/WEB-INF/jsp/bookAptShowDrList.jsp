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

<!-- display dotor list -->

      <div class="row">					
					<div class="mx-auto">
				   <center><h3>Doctors list</h3></center>	
						<table class="table table-striped border-dark table-bordered" >
						
					<tr>
		
					</tr>
						
							<tr>
							
								<th>Sr.No</th>
								<th>Doctor Name</th>
								<th>Clinic Name</th>
								<th>Address</th>
								<th>Doctor Speciality</th>
								<th>Email</th>
								<th>Mobile</th>
								<th>Status</th>
								<th>Select Date</th>
								<th>book Action</th>
							</tr>

							<c:forEach var="item" items="${drList}" begin="0" end="100"
								varStatus="srno">
								<tr> 
						
						
									<th>${srno.index+1 }</th>
									<th>${item.drName}</th>
									<th>${item.clName}</th>
									<th>${item.clAdd}</th>
									<th>${item.drSpec}</th>
									<th>${item.drEmail}</th>
									<th>${item.drMobile}</th>

									<th><c:if test="${item.drStatus==true}"> Available</c:if>
										<c:if test="${item.drStatus==false}"> Not Available</c:if></th>
										
										<form action="aptBooking" method="get">
               <td>
                 <input type="date" id="loc" name="appdate" value="" min="tdate" placeholder="" tabindex="3" required="required" />
               </td>  
                                        
              <td>         
                <input type="hidden" name="drid" value="${item.drId}" readonly />	
                <input type="hidden" name="ptid" value="${user.ptId}" readonly />								
				<button class="btn btn-sm btn-light" type="submit">Book Here</button>							    
	            <!--  </form>     -->         
               </td>   
            </form>
										
								</tr>
							</c:forEach>

						</table>

					</div>

				</div>

   
    
    
    
    
</body>
</html>