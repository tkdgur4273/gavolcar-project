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
public class AdminCarsController {

	@Autowired
	private CarsService carService;

	//list로 이동
	@GetMapping("admin/carlist")
	public String list(Model model) {

		log.info("list()...");

		return "cars/admin/rest_carList";
	}

	//contents_view로 이동
	@GetMapping("/carcontent_view")
	public String rest_car_view(CarsVO carVO,Model model){
		log.info("rest_car_view()...");

		int car_no = carVO.getCar_no();
		model.addAttribute("no", carService.getCarsInfo(car_no));

		return "cars/admin/rest_car_content_view";
	}












	//작성페이지로 이동
	@GetMapping("/carwrite")
	public String carWrite() {

		log.info("car view()...");




		return "cars/admin/car_write_view";
	}

	//수정페이지로 이동
	@GetMapping("/carmodify")
	public String carModify(Model model, CarsVO carsVO) {

		log.info("carModify()...");

		int car_no = carsVO.getCar_no();
		model.addAttribute("no", carService.getCarsInfo(car_no));


		return "cars/admin/car_modify_view";
	}

	//삭제시 리스트로 이동
	@GetMapping("/cardelete")
	public String cardelete(Model model, CarsVO carsVO) {

		log.info("list()...");


		return "cars/admin/rest_carList";
	}




}
