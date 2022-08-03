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
	
	@GetMapping("/admin/peventlist")
	public String list(Model model) {
		log.info("list()...");
		
		return "event/admin/eventList";
	}
	

	

}
 