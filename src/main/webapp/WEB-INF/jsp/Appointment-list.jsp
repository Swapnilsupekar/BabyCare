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



       
       <div class="row" >
         
           <div class=" mx-auto">
            <center><h4 style="color:grey">Appointment List</h4></center> 
         <table class="table table-striped border-dark table-bordered" >
             <tr>
    <th>Sr.No</th>  <th>Patient Name</th>    <th>Status</th> <th>Appointment Date</th>  <th>Close Action</th> <!--  <th>Cancel Action</th> -->
             </tr>
           
           <c:forEach var="item" items="${appointments}" begin="0" end="10" varStatus="srno">  
             <tr>
     <td>${srno.index+1 }</td>  
     
      <td>     
                 <c:forEach var="singlePt" items="${userList}" >
                              <c:if test="${singlePt.ptId==item.ptId}"> ${singlePt.ptName} </c:if>                           
                 </c:forEach>
         </td>  
        
                  <td>  <c:if test="${item.aptStatus==true}">  Booked</c:if>		
                  <c:if test="${item.aptStatus==false}">  cancelled</c:if>	
                
                  </td>
                   
                   
                   <td> ${item.aptDate}</td>    
                 
              	
                 <td>
                   <form action="AptCloseByDr" method="post">
                <input type="hidden" name="ptid" value="${item.ptId}" readonly />														
				<input type="hidden" name="drid" value="${doctor.drId}" readonly />												
				<button class="btn btn-sm btn-light" type="submit">Close</button>							    
	             </form>                           
                 </td> 
                 	
             <%--   <td>
               <form action="AptCancelByDr" method="post">
                 <input type="hidden" name="ptid" value="${item.ptId}" readonly />														
				<input type="hidden" name="drid" value="${doctor.drId}" readonly />								
				<button class="btn btn-sm btn-light" type="submit">Cancel</button>							    
	             </form>              
               </td> 
                          --%>        
             </tr>
             
           </c:forEach>  
                   
         </table> 
        </div>
     </div> 
  
  
  <c:if test="${allPatAptlist==1 }">
    
      <div class="row" >
         
           <div class=" mx-auto">
             <center><h4 style="color:grey">Patients</h4></center> 
         <table class="table table-striped border-dark table-bordered" >
             <tr>
   <th>Sr.No</th>  <th>Patient Id</th>    <th>Status</th> <th>Appointment Date</th> 
             </tr>
           
           <c:forEach var="item" items="${AllpatAptlist}" begin="0" end="10" varStatus="srno">  
             <tr>
   <td>${srno.index+1 }</td>  <td>${item.ptId}</td>   <td>${item.aptStatus}</td> <td> ${item.aptDate}</td>    
            
             </tr>
           </c:forEach>                  
         </table>        
        </div>
      </div>
  </c:if>	

</body>
</html>