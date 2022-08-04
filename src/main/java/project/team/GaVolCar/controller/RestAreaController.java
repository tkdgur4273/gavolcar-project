package project.team.GaVolCar.controller;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.util.Assert;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.service.AreaService;
import project.team.GaVolCar.vo.AreaVO;

@Slf4j
@RequestMapping("/areas")
@RestController
public class RestAreaController {
	
	@Autowired
	private AreaService areaService;
	
	//리스트 데이터 올리기
	@GetMapping("/areaList")
	public List<AreaVO> areaList(Model model){
		log.info("areaList()...");
		
		return areaService.getAreaList();
	}
	
	
	//지역정보 데이터 올리기
	@GetMapping("/{area_name}")
	public AreaVO rest_area_view(AreaVO areaVO,Model model){
		log.info("rest_area_view()...");
		
		return areaService.areaRead(areaVO.getArea_name());
	}
	
	//지역정보 작성
	@PostMapping("/{area_name}")
	public void rest_area_write(@PathVariable String area_name,
			@RequestPart(value = "key") AreaVO area,
			@RequestPart(value = "file") MultipartFile file)throws Exception {
		log.info("rest_area_write() .." + area);
		
		area.setArea_img(file.getOriginalFilename());
		areaService.fileSave(file);		
		areaService.areaRegister(area);
	}
	//지역정보 수정
	@PutMapping("/{area_name}")
	public void rest_update(@PathVariable String area_name,
			@RequestPart(value = "key") AreaVO area,
			@RequestPart(value = "file") MultipartFile file)throws Exception {
		log.info("rest_area_modify() .." + area);
	
		
		area.setArea_img(file.getOriginalFilename());
		areaService.fileSave(file);	
		areaService.areaModify(area);
	}
	
	//지역정보 삭제
	@DeleteMapping("/{area_name} /{area_img}")
	public int rest_area_remove(AreaVO areaVO) {
		log.info("rest_area_remove()...");
		
		
		areaService.fileDelete(areaVO);
		return areaService.areaRemove(areaVO);
	}
	
	

}
 