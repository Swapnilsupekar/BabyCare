
<body>

	<div class="row bg-success " style="height: 70px">

		<div class=" d-flex justify-content-start align-items-center">

			<a class="navbar-band ml-5" href="/home"><img
				style="border-radius: 50%; width: 50px; height: 50px;"
				src="/images/BabyCareLogo.jpg" /> </a>
				
				 <form action="showUserProf" method="post">														
				 <input type="hidden" name="ptid" value="${user.ptId}" readonly />							
				<button class="btn btn-sm btn-white ml-2 mr-3" type="submit">Profile</button>							    
	    </form>	
				
				

			<form action="update-opt" method="post">
				<div>
					<input type="hidden" name="ptid" value="${user.ptId}" readonly />
					<button class="btn btn-sm btn-white  mr-3" type="submit">Update Profile</button>
				</div>
			</form>


			<form action="drList" method="post">
				<div>
					<!--  <input type="date" id="loc" name="appdate" value="" placeholder="" tabindex="3" required="required" />  -->
					<input type="hidden" name="ptid" value="${user.ptId}" readonly />
					<button class="btn btn-sm btn-white mr-3" type="submit">Book Appointment</button>
				</div>
			</form>

			<form action="appointmentInfo" method="post">
				<div>
					<input type="hidden" name="ptid" value="${user.ptId}" readonly />
					<button class="btn btn-sm btn-white mr-3" type="submit">Appointment Information</button>
				</div>
			</form>


			<a class="btn btn-sm btn-white mr-3" href="/home" role="button">
				Logout </a>
		</div>

	</div>