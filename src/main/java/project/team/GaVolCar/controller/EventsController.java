package project.team.GaVolCar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.service.EventService;

@Slf4j
@Controller
public class EventsController {
	
	@Autowired
	private EventService eventService;
	
	//이벤트 리스트로 이동
	@GetMapping("/member/eventlist")
	public String member() {
		log.info("eventList()...");
		return "pevent/member/eventList";
	}
	
	
	//이벤트 페이지로 이동
	@GetMapping("/pevent_view_user")
	public String pevent_view() {
		log.info("pevent_view_user()...");
		return "pevent/member/peventPage";
	}
	
	

}
 