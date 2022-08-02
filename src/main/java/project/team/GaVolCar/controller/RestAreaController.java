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
	
	
	@PostMapping("/{area_name}")
	public void rest_area_write(@PathVariable String area_name,
			@RequestPart(value = "key") AreaVO area,
			@RequestPart(value = "file") MultipartFile file)throws Exception {
		log.info("rest_area_write() .." + area);
	
		ResponseEntity<String> entity = null;
		
		Path directory = Paths.get("C:\\Users\\skype\\git\\GaVolCarProject\\src\\main\\resources\\static").toAbsolutePath().normalize();

		// directory 해당 경로까지 디렉토리를 모두 만든다.
		Files.createDirectories(directory);
	    
		// 파일명을 바르게 수정한다.
		String fileName = StringUtils.cleanPath(file.getOriginalFilename());

		// 파일명에 '..' 문자가 들어 있다면 오류를 발생하고 아니라면 진행(해킹및 오류방지)
		Assert.state(!fileName.contains(".."), "Name of file cannot contain '..'");
		
		// 파일을 저장할 경로를 Path 객체로 받는다.
		Path targetPath = directory.resolve(fileName).normalize();

		// 파일이 이미 존재하는지 확인하여 존재한다면 오류를 발생하고 없다면 저장한다.
		Assert.state(!Files.exists(targetPath), fileName + " File alerdy exists.");
		file.transferTo(targetPath);
	
		area.setArea_img(file.getOriginalFilename());
		
		
		
		
		areaService.areaRegister(area);
	}
	
	@PutMapping("/{area_name}")
	public void rest_update(@PathVariable String area_name,
			@RequestPart(value = "key") AreaVO area,
			@RequestPart(value = "file") MultipartFile file)throws Exception {
		log.info("rest_area_modify() .." + area);
	
		ResponseEntity<String> entity = null;
		
		Path directory = Paths.get("C:\\Users\\skype\\git\\GaVolCarProject\\src\\main\\resources\\static").toAbsolutePath().normalize();

		// directory 해당 경로까지 디렉토리를 모두 만든다.
		Files.createDirectories(directory);
	    
		// 파일명을 바르게 수정한다.
		String fileName = StringUtils.cleanPath(file.getOriginalFilename());

		// 파일명에 '..' 문자가 들어 있다면 오류를 발생하고 아니라면 진행(해킹및 오류방지)
		Assert.state(!fileName.contains(".."), "Name of file cannot contain '..'");
		
		// 파일을 저장할 경로를 Path 객체로 받는다.
		Path targetPath = directory.resolve(fileName).normalize();

		// 파일이 이미 존재하는지 확인하여 존재한다면 오류를 발생하고 없다면 저장한다.
		Assert.state(!Files.exists(targetPath), fileName + " File alerdy exists.");
		file.transferTo(targetPath);
	
		area.setArea_img(file.getOriginalFilename());
		
		
		
		areaService.areaModify(area);
	}
//	public int rest_area_modify(AreaVO areaVO) {
//		log.info("rest_area_modify()...");
//		
//		return areaService.areaModify(areaVO);
//	}
	
	
	
	
	@DeleteMapping("/{area_name} /{area_img}")
	public int rest_area_remove(AreaVO areaVO) {
		log.info("rest_area_remove()...");
		
		
		//현재 게시판에 존재하는 파일객체를 만듬
		File file = new File("C:\\Users\\skype\\git\\GaVolCarProject\\src\\main\\resources\\static\\" + areaVO.getArea_img());
		log.info("C:\\Users\\skype\\git\\GaVolCarProject\\src\\main\\resources\\static\\" + areaVO.getArea_img());
		if(file.exists()) { // 파일이 존재하면
			file.delete(); // 파일 삭제	
		}

		
		
		
		return areaService.areaRemove(areaVO);
	}
	
	

}
 