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
import project.team.GaVolCar.service.EventService;
import project.team.GaVolCar.vo.AreaVO;
import project.team.GaVolCar.vo.PeventsRentsVO;
import project.team.GaVolCar.vo.RentsVO;

@Slf4j
@RequestMapping("/pevent")
@RestController
public class RestEventsController {
	
	@Autowired
	private EventService eventService;
	
	@GetMapping("/eventpage")
	public List<PeventsRentsVO> peventList(Model model){
		log.info("areaList()...");
		
		return eventService.getPeventsRentsList();
	};
	
	@GetMapping("/{user_id}")
	public List<PeventsRentsVO> getPointsInfo(RentsVO rentsVO, Model model) {
		log.info("getPointsInfo()....");
		log.info(rentsVO.getUser_id());
		
		
		return eventService.getPointsInfo(rentsVO.getUser_id());
		
	}

}
 