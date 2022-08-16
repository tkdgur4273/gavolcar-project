package project.team.GaVolCar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.service.AreaService;
import project.team.GaVolCar.vo.AreaVO;

@Slf4j
@Controller
public class AdminAreaController {
	
	@Autowired
	private AreaService areaService;
	
	//list로 이동
	@GetMapping("admin/arealist")
	public String list(Model model) {
		
		log.info("list()...");
			
		return "area/admin/rest_areaList";
	}
	
	//contents_view로 이동
	@GetMapping("/areacontent_view")
	public String rest_area_view(AreaVO areaVO,Model model){
		log.info("rest_area_view()...");
		
		String area_name = areaVO.getArea_name();
		model.addAttribute("name", areaService.areaRead(area_name));
		
		return "area/admin/rest_area_content_view";
	}
	
	//작성페이지로 이동
	@GetMapping("/areawrite")
	public String areawrite() {
		
		log.info("write view()...");
		
		
		
		
		return "area/admin/area_write_view";
	}
	
	//수정페이지로 이동
	@GetMapping("/areamodify")
	public String areamodify(Model model, AreaVO areaVO) {
		
		log.info("list()...");
		
		String area_name = areaVO.getArea_name();
		model.addAttribute("name", areaService.areaRead(area_name));
		
		
		return "area/admin/area_modify_view";
	}
	
	//삭제시 리스트로 이동
	@GetMapping("/areadelete")
	public String areadelete(Model model, AreaVO areaVO) {
		
		log.info("list()...");
		
		
		return "area/admin/rest_areaList";
	}
	
	
	

}
 