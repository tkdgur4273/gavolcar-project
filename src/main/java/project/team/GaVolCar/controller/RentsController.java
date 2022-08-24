package project.team.GaVolCar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.service.RentService;
import project.team.GaVolCar.vo.RentsVO;

@Slf4j
@Controller
public class RentsController {

	@Autowired
	private RentService rentsService;

	@GetMapping("/user/rentscheck")
	public String getRentsList(RentsVO rentsVO, Model model){
		log.info("getRentsList().....");
		model.addAttribute("list", rentsService.getRentList(rentsVO.getUser_id()));

		return "rents/user/rents_check";
	}
	
	@GetMapping("/deletePopup")
	public String deletePopup(RentsVO rentsVO, Model model){
		log.info("deletePopup().....");
		return "rents/user/deletePopup";
	}
	@GetMapping("/modifyPopup")
	public String modifyPopup(RentsVO rentsVO, Model model){
		log.info("deletePopup().....");
		return "rents/user/modifyPopup";
	}

	@GetMapping("/admin/rentscheck")
	public String getAdminRentsList(Model model){
		log.info("getAdminRentsList().....");
		model.addAttribute("list", rentsService.getAllRentsList());

		return "rents/admin/rents_check";
	}
	
	@GetMapping("/admindeletePopup")
	public String admindeletePopup(RentsVO rentsVO, Model model){
		log.info("deletePopup().....");
		return "rents/admin/deletePopup";
	}
	@GetMapping("/adminmodifyPopup")
	public String adminmodifyPopup(RentsVO rentsVO, Model model){
		log.info("deletePopup().....");
		return "rents/admin/modifyPopup";
	}
}
