package project.team.GaVolCar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.service.BoardsService;

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
