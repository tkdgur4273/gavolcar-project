package project.team.GaVolCar.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.service.AreaService;
import project.team.GaVolCar.vo.AreaVO;

@Slf4j
@Controller
public class UserAreaController {
	
	@Autowired
	private AreaService areaService;
	

	@GetMapping("arealist_user")
	public String list(Model model) {
		
		log.info("list()...");
		
		return "area/rest_areaList";
	}
	
	
	@GetMapping("/areacontent_view_user")
	public String rest_area_view(AreaVO areaVO,Model model){
		log.info("rest_area_view()...");
		
		String area_name = areaVO.getArea_name();
		model.addAttribute("name", areaService.areaRead(area_name));
		
		return "area/rest_area_content_view";
	}
}