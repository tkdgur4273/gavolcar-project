package project.team.GaVolCar.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.service.EventService;
import project.team.GaVolCar.vo.CeventsBoardsVO;
import project.team.GaVolCar.vo.CeventsVO;
import project.team.GaVolCar.vo.RentsVO2;

@Slf4j
@RequestMapping("/cevent")
@RestController
public class RestCeventsController {

	@Autowired
	private EventService eventService;

	@GetMapping("/eventpage")
	public List<CeventsVO> ceventList(Model model) {
		log.info("CeventInfo()....");

		return eventService.getCeventsList();

	}

	@GetMapping("/allinforms")
	public List<CeventsBoardsVO> allinforms(Model model) {
		log.info("allinforms()....");

		return eventService.getCeventBoardList();

	}

	@GetMapping("/{user_id}")
	public List<CeventsBoardsVO> getPointsInfo(RentsVO2 rentsVO, Model model) {
		log.info("getPointsInfo()....");
		log.info(rentsVO.getUser_id());

		return eventService.getCouponInfo(rentsVO.getUser_id());

	}

}
