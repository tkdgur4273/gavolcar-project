package project.team.GaVolCar.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class HomeController {

	@GetMapping("/")
	public String home() {
		return "redirect:/main";
	}
	
	@GetMapping("/testblankbase")
	public String blank() {
		return "/blankbase";
	}

	//	@GetMapping("/user/userHome")
	//	public String userHome() {
	//		log.info("userHome ...");
	//		return "/user/userHome";
	//	}
	//	
	//	@GetMapping("/admin/adminHome")
	//	public void adminHome() {
	//		log.info("adminHome ...");
	//	}
	//	
	//	@GetMapping("/member/memberHome")
	//	public void memberHome() {
	//		log.info("memberHome ...");
	//	}
	//	
	//	
	//	//컨트롤러가 @RestController 일때 jsp로 서비스하는(return) 방법
	//	@GetMapping("/index")
	//	public ModelAndView index(ModelAndView mav) {
	//		mav.setViewName("index");
	//		return mav;
	//	}
	@GetMapping("/error/403")
	public String error404(HttpServletRequest request, HttpServletResponse response) {
		log.info("error 404");
        log.info("=====request : " + request);
		return "/error/403";
	}
	@GetMapping("/error/404")
	public String error2() {
		return "/error/404";
	}
	@GetMapping("/pay")
	public String pay() {
		return "pay";
	}
	@GetMapping("/admin/adminHome")
	public void adminHome() {
		log.info("adminHome..");
	}


}
