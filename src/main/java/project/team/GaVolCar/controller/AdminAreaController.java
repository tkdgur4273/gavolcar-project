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
public class AdminAreaController {
	
	@Autowired
	private AreaService areaService;
	

	@GetMapping("admin/arealist")
	public String list(Model model) {
		
		log.info("list()...");
		
		return "area/admin/rest_areaList";
	}
	
	
	@GetMapping("/areacontent_view")
	public String rest_area_view(AreaVO areaVO,Model model){
		log.info("rest_area_view()...");
		
		String area_name = areaVO.getArea_name();
		model.addAttribute("name", areaService.areaRead(area_name));
		
		return "area/admin/rest_area_content_view";
	}
	
	@GetMapping("/areawrite")
	public String areawrite() {
		
		log.info("write view()...");
		
		
		
		
		return "area/admin/area_write_view";
	}
	
	@GetMapping("/areamodify")
	public String areamodify(Model model, AreaVO areaVO) {
		
		log.info("list()...");
		
		String area_name = areaVO.getArea_name();
		model.addAttribute("name", areaService.areaRead(area_name));
		
		
		return "area/admin/area_modify_view";
	}
	
	@GetMapping("/areadelete")
	public String areadelete(Model model, AreaVO areaVO) {
		
		log.info("list()...");
		
		
		return "area/admin/rest_areaList";
	}
	
	
	

}
 