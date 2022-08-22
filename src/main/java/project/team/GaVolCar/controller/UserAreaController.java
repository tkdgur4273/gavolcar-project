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
//고객용
public class UserAreaController {

	@Autowired
	private AreaService areaService;

	//지역정보 리스트이동
	@GetMapping("/arealist_user")
	public String list(Model model) {

		log.info("list()...");

		return "area/rest_areaList";
	}

	//지역정보 contents_view이동
	@GetMapping("/areacontent_view_user")
	public String rest_area_view(AreaVO areaVO,Model model){
		log.info("rest_area_view()...");

		String area_name = areaVO.getArea_name();
		model.addAttribute("name", areaService.areaRead(area_name));

		return "area/rest_area_content_view";
	}
}