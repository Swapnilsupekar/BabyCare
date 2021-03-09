package in.cdac.project.Admin;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminActionController {

	@RequestMapping("/admin")
	public ModelAndView AdminPage() {
		return new ModelAndView("AdminLoginForm");
	}

	@PostMapping("/adminlogin")
	public ModelAndView AuthenticateAdmin(String admUsername, String admPassword) {
		String adminusername = "Admin";
		String adminpassword = "Admin@123";
		if ((adminusername.equals(admUsername)) && (adminpassword.equals(admPassword))) {
			ModelAndView mv = new ModelAndView("AddDetails");
			return mv;
		} else {
			ModelAndView mv = new ModelAndView("AdminLoginForm");
			mv.addObject("AdmLogFail", 0);
			return mv;
		}
	}

	@RequestMapping("/logout")
	public ModelAndView Logout(HttpServletRequest request) {
		request.getSession().invalidate();
		return new ModelAndView("home");
	}

}
