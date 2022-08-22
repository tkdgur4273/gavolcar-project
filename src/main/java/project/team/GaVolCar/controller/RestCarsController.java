package project.team.GaVolCar.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.service.CarsService;
import project.team.GaVolCar.vo.CarsVO;

@Slf4j
@RequestMapping("/cars")
@RestController
public class RestCarsController {

	@Autowired
	private CarsService carService;

	//리스트 데이터 올리기
	@GetMapping("/carList")
	public List<CarsVO> areaList(Model model){
		log.info("carList()...");

		return carService.getCarsList();
	}


	//지역정보 데이터 올리기
	@GetMapping("/{car_no}")
	public CarsVO rest_car_view(CarsVO carsVO,Model model){
		log.info("rest_area_view()...");

		return carService.getCarsInfo(carsVO.getCar_no());
	}

	//지역정보 작성
	@PostMapping("/{car_no}")
	public void rest_car_write(@PathVariable int car_no,
			@RequestPart(value = "key") CarsVO carsVO,
			@RequestPart(value = "file") MultipartFile file)throws Exception {
		log.info("rest_car_write() .." + carsVO);


		carsVO.setCar_img(file.getOriginalFilename());
		carService.fileSave(file);		
		carService.insertCars(carsVO);
	}
	//지역정보 수정
	@PutMapping("/{car_no}")
	public void rest_update(@PathVariable int car_no,
			@RequestPart(value = "key") CarsVO carsVO,
			@RequestPart(value = "file") MultipartFile file)throws Exception {
		log.info("rest_area_modify() .." + carsVO);

		carService.fileDelete(carsVO);
		carsVO.setCar_img(file.getOriginalFilename());
		carService.fileSave(file);	
		carService.updateCars(carsVO);
	}

	//지역정보 삭제
	@DeleteMapping("/{car_no} /{car_img}")
	public int rest_car_remove(CarsVO carsVO) {
		log.info("rest_car_remove()...");


		carService.fileDelete(carsVO);
		return carService.deleteCars(carsVO);
	}



}
