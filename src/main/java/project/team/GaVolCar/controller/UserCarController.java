package project.team.GaVolCar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.service.CarsService;
import project.team.GaVolCar.vo.CarsVO;

@Slf4j
@Controller
//고객용
public class UserCarController {

	@Autowired
	private CarsService carsService;

	//차량정보 리스트이동
	@GetMapping("/carlist_user")
	public String list(Model model) {

		log.info("carlist()...");

		return "cars/rest_carList";
	}

	//차량정보 contents_view이동
	@GetMapping("/carcontent_view_user")
	public String rest_car_view(CarsVO carVO ,Model model){
		log.info("rest_car_view()...");

		int car_no = carVO.getCar_no();
		model.addAttribute("no", carsService.getCarsInfo(car_no));

		return "cars/rest_car_content_view";
	}
}