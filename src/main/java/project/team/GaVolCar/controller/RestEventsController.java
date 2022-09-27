package project.team.GaVolCar.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.service.EventService;
import project.team.GaVolCar.vo.PeventsRentsVO;
import project.team.GaVolCar.vo.RentsVO2;

@Slf4j
@RequestMapping("/pevent")
@RestController
public class RestEventsController {

	@Autowired
	private EventService eventService;

	//전체 포인트 이벤트 리스트 호출
	@GetMapping("/eventpage")
	public List<PeventsRentsVO> peventList(Model model){
		log.info("areaList()...");

		return eventService.getPeventsRentsList();
	};


	//특정 유저 이벤트 리스트 호출
	@GetMapping("/{user_id}")
	public List<PeventsRentsVO> getPointsInfo(RentsVO2 rentsVO, Model model) {
		log.info("getPointsInfo()....");
		log.info(rentsVO.getUser_id());


		return eventService.getPointsInfo(rentsVO.getUser_id());

	}


}
