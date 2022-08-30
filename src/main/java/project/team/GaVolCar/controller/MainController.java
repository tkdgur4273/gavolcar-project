package project.team.GaVolCar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.service.AreaService;
import project.team.GaVolCar.service.BoardsService;

@Slf4j
@Controller
public class MainController {

	@Autowired
	private AreaService areaService;
	@Autowired
	private BoardsService boardsService;

	//list로 이동
	@GetMapping("main")
	public String main(Model model) {

		log.info("main()...");
		model.addAttribute("alertForMainPage", boardsService.getMainAlert());

		return "main";
	}
	
	@GetMapping("admin/main")
	public String admingate(Model model) {

		log.info("main()...");
	
		return "redirect:/adminmain";
	}
	
	
	
	@GetMapping("/adminmain")
	public String adminmain(Model model) {

		log.info("main()...");
		model.addAttribute("alertForMainPage", boardsService.getMainAlert());

		return "admin/main";
	}
	@GetMapping("custommerService")
	public String custommerService(Model model) {

		log.info("main()...");
		model.addAttribute("alertForMainPage", boardsService.getMainAlert());

		return "boards/custommerServiceList";
	}
	@GetMapping("adminCustommerService")
	public String adminCustommerService(Model model) {

		log.info("main()...");
		model.addAttribute("alertForMainPage", boardsService.getMainAlert());

		return "boards/adminCustommerService";
	}

}
