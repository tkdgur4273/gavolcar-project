package project.team.GaVolCar.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
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
import project.team.GaVolCar.service.BoardsService;
import project.team.GaVolCar.vo.AreaVO;

@Slf4j
@Controller
public class AdminBoardsController {
	
	@Autowired
	private BoardsService boardsService ;
	
	//list로 이동
	@GetMapping("admin/boardslist")
	public String list(Model model) {
		
		log.info("list()...");
		model.addAttribute("boardslist", boardsService.getBoardsList());
		return "boards/admin/boardsList";
	}
	
	@GetMapping("admin/boardscommentslist")
	public String commentslist(Model model) {
		
		log.info("list()...");
		model.addAttribute("boardslist", boardsService.getBoardsCommentsList());
		
		if(Math.random()>0) {
			return "cevent/member/getcoupons";
		}
		else {
		return "boards/admin/boardsCommentsList";
		}
	}
	
	

}
 