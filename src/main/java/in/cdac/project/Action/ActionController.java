package in.cdac.project.Action;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import in.cdac.project.Action.entity.Appointment;
import in.cdac.project.Action.entity.BabyName;
import in.cdac.project.Action.entity.Babysitter;
import in.cdac.project.Action.entity.Doctors;
import in.cdac.project.Action.entity.Inquiry;
import in.cdac.project.Action.entity.User;
import in.cdac.project.Action.entity.Vaccination;
import in.cdac.project.Action.service.AppointmentService;
import in.cdac.project.Action.service.BabyNameService;
import in.cdac.project.Action.service.BabySitterService;
import in.cdac.project.Action.service.InquiryService;
import in.cdac.project.Action.service.VaccinationService;
import in.cdac.project.ServiceImlemantation.BabyNameServiceImplimantation;
import in.cdac.project.ServiceImlemantation.BebySitterImplemantation;
import in.cdac.project.ServiceImlemantation.DoctorsService;
import in.cdac.project.ServiceImlemantation.UserService;
import in.cdac.project.ServiceImlemantation.VaccinationServiceImplemantation;

@Controller
public class ActionController {

	@Autowired
	UserService userService;
	
	@Autowired
	DoctorsService doctorService;
	
	@Autowired
	AppointmentService appointmentService;
	
	
	
	@Autowired
	HttpSession session;
	@Autowired
	BabySitterService babysitterService;
	@Autowired
	BebySitterImplemantation babyNameServiceImplimantation;
    
    @Autowired
    VaccinationServiceImplemantation  vaccinationServiceImplemantation;
    @Autowired
	VaccinationService vaccinationService;
    
    @Autowired
    BabyNameServiceImplimantation babyNameServicesImplimantation;
    @Autowired
    BabyNameService babyNameService;
    
    @Autowired
    InquiryService inquiryService;
	
	@RequestMapping("/")
	public ModelAndView indexpage() {

		return new ModelAndView("Home");

	}

	@RequestMapping("/home")
	public ModelAndView homepage() {

		return new ModelAndView("Home");

	}

	@RequestMapping("/food")
	public ModelAndView babyfood() {

		return new ModelAndView("BabyFood");

	}

	@RequestMapping("/product")
	public ModelAndView babyproduct() {

		return new ModelAndView("BabyProduct");

	}

	@RequestMapping("/tips")
	public ModelAndView babytips() {

		return new ModelAndView("BabyTips");

	}
	
	@RequestMapping("/mustwatch")
	public ModelAndView mustWatch() {

		return new ModelAndView("MustWatch");

	}
	
	@RequestMapping("/others")
	public ModelAndView others() {

		return new ModelAndView("Others");

	}
	
	@RequestMapping("/aboutus")
	public ModelAndView aboutus() {

		return new ModelAndView("AboutUs");

	}
	
	//BabyNAme
	
	
	
	
		
		
		
		  //searchbar list
			@RequestMapping("/babynamedetails")
		    public String babynamedetails(Model model, @Param("keyword") String keyword) {
		        List<BabyName> babynames =babyNameServicesImplimantation.listAll(keyword);
		        model.addAttribute("babynames", babynames);
		        model.addAttribute("keyword", keyword);
		        return "babyname_details";
		    }

			
			
		@RequestMapping(value = "/babynamelist", method = RequestMethod.GET)
		public ModelAndView babynamelist() {
			ModelAndView model = new ModelAndView("babyname_list");
			List<BabyName> babyname = babyNameService.getAllBabyName();
			model.addObject("babyname", babyname);
		   return model;
	    }

		
		@RequestMapping(value = "/savebabyname", method = RequestMethod.POST)
		public ModelAndView savebabyname(@ModelAttribute("articleForm") BabyName babyName) {
			babyNameService.saveOrUpdateBabyName(babyName);
			return new ModelAndView("redirect:/babynamelist");	}
		

		@RequestMapping(value = "/addbabyname", method = RequestMethod.GET)
		public ModelAndView addbabyname() {
			ModelAndView model = new ModelAndView();
			BabyName babyname = new BabyName();
			model.addObject("babyname", babyname);
			model.setViewName("babyname_form");
			return model;
		}

		
		
		@RequestMapping(value = "/deletebabyname/{id}", method = RequestMethod.GET)
		public ModelAndView deletebabyname(@PathVariable("id") int id) {
			babyNameService.deleteBabyName(id);
			return new ModelAndView("redirect:/babynamelist");
		}
	

		@RequestMapping(value = "/updatebabyname/{id}", method = RequestMethod.GET)
		public ModelAndView updatebabyname(@PathVariable int id) {
			ModelAndView model = new ModelAndView();
			BabyName babyname = babyNameService.getBabyNameId(id);
			model.addObject("babyname",babyname);
			model.setViewName("babyname_form");
			return model;
	}

	

	
	
	
	// BabySitter Details

	@RequestMapping("/babysitters")
	public ModelAndView babysitter() {

		return new ModelAndView("babysitter_list");

	}

	@RequestMapping(value = "/babysiterdetailss", method = RequestMethod.GET)
	public ModelAndView viewbBabysitterlist() {
		ModelAndView model = new ModelAndView("babysitter_details");
		List<Babysitter> articleList = babysitterService.getAllBebySitters();
		model.addObject("articleList", articleList);

		return model;
	}
	
  //searchbar list
	@RequestMapping("/babysiterdetails")
    public String viewHomePage(Model model, @Param("keyword") String keyword) {
        List<Babysitter> Poollist =babyNameServiceImplimantation.listAll(keyword);
        model.addAttribute("Poollist", Poollist);
        model.addAttribute("keyword", keyword);

        return "babysitter_details";
    }

	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView model = new ModelAndView("babysitter_list");
		List<Babysitter> articleList =babysitterService.getAllBebySitters();
		model.addObject("articleList", articleList);

		return model;
	}

	@RequestMapping(value = "/savebabysitter", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("articleForm") Babysitter article) {
		babysitterService.saveOrUpdate(article);
		return new ModelAndView("redirect:/list");

	}

	@RequestMapping(value = "/addbabysitter", method = RequestMethod.GET)
	public ModelAndView addArticle() {
		ModelAndView model = new ModelAndView();

		Babysitter article = new Babysitter();
		model.addObject("articleForm", article);
		model.setViewName("babysitter_form");

		return model;
	}

	@RequestMapping(value = "/deletebabysitter/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable("id") int id) {
		babysitterService.delete(id);

		return new ModelAndView("redirect:/list");
	}

	@RequestMapping(value = "/updatebebysitter/{id}", method = RequestMethod.GET)
	public ModelAndView editArticle(@PathVariable int id) {
		ModelAndView model = new ModelAndView();

		Babysitter article = babysitterService.getUserById(id);
		model.addObject("articleForm", article);
		model.setViewName("UpdateBabySitter");

		return model;
	}
	
	
	
	

	@RequestMapping(value = "/adddoctor", method = RequestMethod.GET)
	public ModelAndView addDoctor() {
		ModelAndView model = new ModelAndView();

		Doctors doctors = new Doctors();
		model.addObject("articleForm", doctors);
		model.setViewName("doctor_form");
		return model;
	}

	
	
	//Vaccination Actions
	
	@RequestMapping(value = "/vaccinationdetailss", method = RequestMethod.GET)
	public ModelAndView viewbVaccinationlist() {
		ModelAndView model = new ModelAndView("vacination_details");
		List<Vaccination> articleList = vaccinationService.getAllVaccinationDetails();
		model.addObject("articleList", articleList);
		return model;
	}
	
	
	  //searchbar list
		@RequestMapping("/vaccinationdetails")
	    public String vaccinationdetailss(Model model, @Param("keyword") String keyword) {
	        List<Vaccination> articleList =vaccinationServiceImplemantation.listAll(keyword);
	        model.addAttribute("articleList", articleList);
	        model.addAttribute("keyword", keyword);

	        return "vacination_details";
	    }

		
		
	@RequestMapping(value = "/vaccinationlist", method = RequestMethod.GET)
	public ModelAndView Vaccinationlist() {
		ModelAndView model = new ModelAndView("vacination_list");
		List<Vaccination> articleList = vaccinationService.getAllVaccinationDetails();
		model.addObject("articleList", articleList);
		return model;
	}

	
	@RequestMapping(value = "/savevaccination", method = RequestMethod.POST)
	public ModelAndView saveVaccinationDetails(@ModelAttribute("articleForm") Vaccination vaccination) {
		vaccinationService.saveOrUpdateVaccinationDetails(vaccination);
		return new ModelAndView("redirect:/vaccinationlist");
	}
	

	@RequestMapping(value = "/addvaccination", method = RequestMethod.GET)
	public ModelAndView addVaccinationDetails() {
		ModelAndView model = new ModelAndView();
		Vaccination vaccination = new Vaccination();
		model.addObject("articleForm", vaccination);
		model.setViewName("vaccination_form");
		return model;
	}

	
	
	@RequestMapping(value = "/deletevaccination/{id}", method = RequestMethod.GET)
	public ModelAndView deleteVaccinationDetails(@PathVariable("id") int id) {
		vaccinationService.deleteVaccinationDetails(id);
		return new ModelAndView("redirect:/vaccinationlist");
	}
	

	@RequestMapping(value = "/updatevaccination/{id}", method = RequestMethod.GET)
	public ModelAndView editVaccinationDetails(@PathVariable int id) {
		ModelAndView model = new ModelAndView();
		Vaccination vaccination = vaccinationService.getVaccinationDetailsById(id);
		model.addObject("articleForm",vaccination);
		model.setViewName("UpdateVaccination");
		return model;
	}

	
	//InquiryFormAction
	
	@RequestMapping(value = "/inquirylist", method = RequestMethod.GET)
	public ModelAndView Inquirylist() {
		ModelAndView model = new ModelAndView("Inquiry_list");
		List<Inquiry> articleList = inquiryService.getAllInquiry();
		model.addObject("articleList", articleList);
		return model;
	}

	
	@RequestMapping(value = "/saveinquiry", method = RequestMethod.POST)
	public ModelAndView saveInquiryDetails(@ModelAttribute("articleForm") Inquiry inquiry) {
		inquiryService.saveOrUpdateInquiry(inquiry);
		return new ModelAndView("redirect:/addinquiry");
	}
	

	@RequestMapping(value = "/addinquiry", method = RequestMethod.GET)
	public ModelAndView addInquiryDetails() {
		ModelAndView model = new ModelAndView();
		Inquiry inquiry = new Inquiry();
		model.addObject("articleForm",inquiry);
		model.setViewName("Inquiry_form");
		return model;
	}

	
	
	@RequestMapping(value = "/deleteinquiry/{id}", method = RequestMethod.GET)
	public ModelAndView deleteInquiryDetails(@PathVariable("id") int id) {
		inquiryService.deleteInquiry(id);
		return new ModelAndView("redirect:/inquirylist");
	}
	

	@RequestMapping(value = "/updateinquiry/{id}", method = RequestMethod.GET)
	public ModelAndView editInquiryDetails(@PathVariable int id) {
		ModelAndView model = new ModelAndView();
		Inquiry inquiry = inquiryService.getInquiryById(id);
		model.addObject("articleForm",inquiry);
		model.setViewName("Inquiry_form");
		return model;
	}
	
	//user doctor appoint
	
	@GetMapping("/register")
	public ModelAndView create() {
		ModelAndView mv = new ModelAndView("register");
		return mv;
	}
	
	
	
	@PostMapping("/registered")
	public ModelAndView create(String ptName, String age, String ptGmail, String ptMobile, String ptUsername,
			String ptPassword) {
		ModelAndView mv = new ModelAndView("register");
		int ptAge = Integer.parseInt(age);
		User user = new User(ptName, ptAge, ptGmail, ptMobile, ptUsername, ptPassword);
		userService.create(user);
		mv.addObject("patReg", 1);
		return mv;
	}
   
	@PostMapping("/AuthUsrlogin")
	public ModelAndView AuthenticateUser(String ptUsername, String ptPassword) {
		User user = userService.AuthenticateUser(ptUsername, ptPassword);
		if (user != null) {
			ModelAndView mv = new ModelAndView("Appointment");
			mv.addObject("user", user);			
			return mv;
		} else {
			ModelAndView mv = new ModelAndView("register");
			mv.addObject("ptLogFail", 0);
			return mv;
		}
	}
	
	
	@GetMapping("/Doctregister")
	public ModelAndView Doctregister() {
		ModelAndView mv = new ModelAndView("DrLogReg");
		return mv;
	}
	
	
	@PostMapping("/Drregistered")
	public ModelAndView Doctregistered(String drName, String clName,String clAdd,String drSpec, String drGmail, String drMobile, String drUsername,
			String drPassword) {
		ModelAndView mv = new ModelAndView("DrLogReg");
		
		Doctors doctor= new Doctors(drName, clName,clAdd,drSpec, drGmail, drMobile, drUsername, drPassword,false);
		doctorService.createDr(doctor);
		mv.addObject("patReg", 1);
		return mv;
	}
	
	@PostMapping("/Authentdrlogin")
	public ModelAndView AuthenticateDoctor(String drUsername,String drPassword) {		
		Doctors doctor=doctorService.AuthenticateDoctor(drUsername, drPassword);		
		if(doctor!=null) {
			ModelAndView mv=new ModelAndView("doctorProfile");
			mv.addObject("doctor", doctor);
			return mv;
		}		
		else {
			ModelAndView mv=new ModelAndView("DrLogReg");
			mv.addObject("drLogFail", 0);
			return mv;        
		}
	}
	
	// read all doctor list as per drId
		  @PostMapping("/drList") 
		  public ModelAndView drList(String ptid) { 
			  List<Doctors> drList=doctorService.drList();
			  User user=userService.getSingleUser(ptid);
		  ModelAndView mv = new ModelAndView("bookAptShowDrList"); 
		  mv.addObject("user",  user); // List<DoctorEntity> drList=doctorRepository.findAll(); //
		  mv.addObject("drList", drList); 
		   mv.addObject("DRLIST", 1); 
		   return mv;
	     }
		  
		  
		  @GetMapping("/aptBooking")
		     public ModelAndView aptBooking(String appdate,String ptid,String drid ){
			  User user=userService.getSingleUser(ptid);
		    	
		    	 appointmentService.aptBooking(appdate,ptid,drid);
		    	// List<Appointment> appointments= appointmentService.AllpatAptlist(ptid);
		    	 ModelAndView mv=new ModelAndView("bookingsuccess"); 
		    	 mv.addObject("user",  user);
		    	//addObject("appointments",  appointments);
		    	 mv.addObject("b",1);
		    	 System.out.println("appointment booked succesfully");
		    	 return mv;
		     }
		   @PostMapping("/appointmentInfo")
		  public ModelAndView appointmentInfo(String ptid ) {
			  User user=userService.getSingleUser(ptid); 
			  List<Appointment> appointments= appointmentService.AllpatAptlist(ptid);
			  ModelAndView mv=new ModelAndView("appointmentInfo");
			  mv.addObject("user",  user);
			  mv.addObject("appointments",  appointments);
			  
			  List<Doctors> drList=doctorService.allDoctor();
		    	 mv.addObject("drList",  drList);		    	 
			  return mv;
           }
		  
		  
		 //doctor
		   @PostMapping("/Appointuserlist")
		    public ModelAndView Appointpatientlist(String drid) {
				       boolean aptStatus=true;
		   	      	    ModelAndView mv=new ModelAndView("Appointment-list");
		   	      	    Doctors doctor=doctorService.getDoctor(drid);
		   	  	      	List<Appointment> appointments=appointmentService.Appointpatientlist(drid,aptStatus);
		   	  	         mv.addObject("doctor", doctor); 	  	        
		   	  	         mv.addObject("appointments", appointments);
		   	  	         mv.addObject("appointPatientlist", 1);
		   	  	         
		   	  	         
		   	  	    List< User> userList =userService.getAllPatient();
			   	    mv.addObject("userList",  userList);
					    return mv;
		    }  
		  //patient cancel
		  @PostMapping("/aptCancel")
		     public ModelAndView aptCancel(String ptid,String drid){
		    	 User user=userService.getSingleUser(ptid);    	  	   
		    	 appointmentService.aptCancel(ptid,drid);
		    	 ModelAndView mv=new ModelAndView("appointmentInfo"); 
		    	  List<Appointment> appointments= appointmentService.AllpatAptlist(ptid);
		    	  
		    	 mv.addObject("user",  user);
		    	 mv.addObject("c",1);
		    	 System.out.println("appointment cancelled");
		    	 mv.addObject("appointments",  appointments);
		    	 return mv;
		     }
		  
		//doctor close
		  @PostMapping("/AptCloseByDr")
		     public ModelAndView AptCloseByDr(String ptid,String drid){
			  boolean aptStatus=true;
		    	 User user=userService.getSingleUser(ptid);
		    	 Doctors doctor=doctorService.getDoctor(drid);
		    	 appointmentService.aptCancel(ptid,drid);
		    	 ModelAndView mv=new ModelAndView("Appointment-list"); 
		    	 List<Appointment> appointments=appointmentService.Appointpatientlist(drid,aptStatus);
		    	 mv.addObject("doctor", doctor); 	
		    	 mv.addObject("user",  user);
		    	 mv.addObject("c",1);
		    	 System.out.println("appointment cancelled");
		    	 mv.addObject("appointments",  appointments);
		    	 return mv;
		     }
		  
		  
		  
		
		  @GetMapping("/doctProfile")
			public ModelAndView doctProfile(String drid) {		
				Doctors doctor=doctorService.getDoctor(drid);	
				
					ModelAndView mv=new ModelAndView("doctorProfile");
					mv.addObject("doctor", doctor);
					mv.addObject("doctProfile", 1);
					return mv;
					
		  }
		  
		  
		//update dr status			
			@PostMapping("/editDrStatus")
			  public ModelAndView editDrStatus(String drid) {
				doctorService.editDrStatus(drid);				
				ModelAndView mv=new ModelAndView("doctorProfile");	
				Doctors doctor=doctorService.getDoctor(drid);	
				mv.addObject("doctor", doctor);				
				mv.addObject("doctProfile", 1);
			    return mv;
			  }
			
			
			//provide editable window to user
			@PostMapping("/update-opt")
			public ModelAndView userUpdateOpt(String ptid) {
				 User user=userService.getSingleUser(ptid);
				if (user != null) {
					ModelAndView mv = new ModelAndView("updateUserProfile");
					mv.addObject("user", user);
					mv.addObject("u", 2);
					return mv;
				} else {
					ModelAndView mv = new ModelAndView("updateUserProfile");
					mv.addObject("user", user);
					mv.addObject("u", 3);
					return mv;
				}
			}
			
			//updation of user done
			@PostMapping("/upd-user")
			public ModelAndView userupdated(String id, String ptName, String age, String ptGmail, String ptMobile,String ptUsername,String ptPassword) {
				User user = userService.userupdated(id, ptName, age, ptGmail, ptMobile,ptUsername,ptPassword);
				if (user != null) {
					ModelAndView mv = new ModelAndView("updateUserProfile");
					mv.addObject("user", user);
					mv.addObject("u", 1);
					return mv;
				} else {
					ModelAndView mv = new ModelAndView("updateUserProfile");
					mv.addObject("user", user);
					mv.addObject("u", 0);
					return mv;
				}

			}
			
			
			@PostMapping("/showUserProf")
			public ModelAndView showUserProf(String ptid) {
				 User user=userService.getSingleUser(ptid);	 
					ModelAndView mv = new ModelAndView("Appointment");
					mv.addObject("user", user);
					mv.addObject("userProf", 1 );
					return mv;
				
			}
			
			//provide option to doctor to edit prof
			@PostMapping("/editDrOpt")
			  public ModelAndView editDrOpt(String drid) {
				ModelAndView mv=new ModelAndView("updateDoctorProfile");												
				Doctors doctor=doctorService.getDoctor(drid);			
				mv.addObject("doctor",doctor );
				mv.addObject("editDrProf", 1);
				mv.addObject("drprofile", 2);	
			    return mv;
			  }
			
			
			
			@PostMapping("/updateDr")
			 public ModelAndView updateDr(String id,String drName,String drSpec,String drEmail,String drMobile,String drUsername,String drPassword,String hspId) {
				      ModelAndView mv=new ModelAndView("doctorProfile");				    
				     Doctors doctor=doctorService.updateDr(id, drName, drSpec, drEmail, drMobile, drUsername, drPassword, hspId);				     				     			
				     mv.addObject("doctor", doctor);				
						mv.addObject("doctProfile", 1);			
					
					System.out.println("doctor updated successfully in admin dao");
					return mv;
			}
			
			
}
