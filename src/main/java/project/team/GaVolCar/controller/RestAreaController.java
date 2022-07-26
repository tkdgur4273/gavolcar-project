package project.team.GaVolCar.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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
@RequestMapping("/areas")
@RestController
public class RestAreaController {
	
	@Autowired
	private AreaService areaService;
	
	@GetMapping("/areaList")
	public List<AreaVO> areaList(Model model){
		log.info("areaList()...");
		
		return areaService.getAreaList();
	}
	
	
	
	@GetMapping("/{area_name}")
	public AreaVO rest_area_view(AreaVO areaVO,Model model){
		log.info("rest_area_view()...");
		
		return areaService.areaRead(areaVO.getArea_name());
	}
	
	
	@PostMapping("/")
	public ResponseEntity<String> rest_area_write(@RequestBody AreaVO areaVO){
		log.info("rest_area_write() .." + areaVO);
	
		ResponseEntity<String> entity = null;
		
		try {
			areaService.areaRegister(areaVO);
			entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);			
		
		} catch (Exception e) {
		e.printStackTrace();
		entity = new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
	
	return entity;	
	}
	
	@PutMapping("/{area_name}")
	public int rest_area_modify(AreaVO areaVO) {
		log.info("rest_area_modify()...");
		
		return areaService.areaModify(areaVO);
	}
	
	@DeleteMapping("/{area_name}")
	public int rest_area_remove(AreaVO areaVO) {
		log.info("rest_area_remove()...");
		
		return areaService.areaRemove(areaVO);
	}
	
	

}
 