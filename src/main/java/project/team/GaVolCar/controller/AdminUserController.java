package project.team.GaVolCar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.service.AdminUserService;
import project.team.GaVolCar.vo.UserAuthsVO;
import project.team.GaVolCar.vo.UsersVO;

@Slf4j
@Controller
public class AdminUserController {
	
	@Autowired
	private AdminUserService service;
	
	@Autowired
	private BCryptPasswordEncoder encoder;

	@GetMapping("/admin/list")
	public String list(Model model) {
		log.info("list()..");
		model.addAttribute("MemberList", service.getList());
		return "/admin/list";
	}
	
	@GetMapping("/admin/info")
	public String info(UsersVO usersVO,Model model) {
		log.info("info()..");
		String user_id = usersVO.getUser_id();
		model.addAttribute("info", service.readMember(user_id));
		return "/admin/info";
	}
	
	@GetMapping("/admin/modify")
	public String modify(UsersVO usersVO) {
		log.info("modify()..");
		
		String rawPw = usersVO.getUser_pw();
		String encPassword = encoder.encode(rawPw);
		usersVO.setUser_pw(encPassword);
		int rn = service.updateMember(usersVO);
		
		log.info("modify()..result number : " + rn);
		return "redirect:/admin/list";
	}
	
	@GetMapping("/admin/delete")
	public String delete(UsersVO usersVO) {
		log.info("delete()..");
		int rn = service.deleteMember(usersVO);
		log.info("delete()..result number : " + rn);
		return "redirect:/admin/list";
	}
	
	@GetMapping("/add/addForm")
	public String addForm() {
		log.info("addForm()..");
		return "/add/addForm";
	}
	
	@GetMapping("/add/insert")
	public String insert(UsersVO usersVO) {
		log.info("insert()..");
		UserAuthsVO auth = new UserAuthsVO();
		auth.setAuth_no(10);
		
		String rawPw = usersVO.getUser_pw();
		String encPassword = encoder.encode(rawPw);
		usersVO.setUser_pw(encPassword);
		
		service.insertMember(usersVO);
		return "redirect:/login";
	}
		

}
