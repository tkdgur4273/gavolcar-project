package project.team.GaVolCar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.service.TransService;
import project.team.GaVolCar.vo.TransVO;

@Slf4j
@Controller
public class TransController {

	@Autowired
	private TransService transService;
	//통계 페이지로
	@GetMapping("/trans")
	public String getTransList(Model model){
		log.info("getTransList().....");
		model.addAttribute("transList", transService.getTransList());
		model.addAttribute("month", transService.getMonth());
		model.addAttribute("company", transService.getType());


		return "trans/translist";
	}

	//관리자 통계페이지로
	@GetMapping("/admin/transEdit")
	public String getTransEdit(Model model){
		log.info("getTransList().....");
		model.addAttribute("transList", transService.getTransList());

		return "trans/admin/transEdit";
	}
	//통계정보 추가
	@PostMapping("/transWrite")
	public String transWrite(TransVO transVO, Model model) {
		log.info("write Trans...");

		transService.insertTrans(transVO);

		model.addAttribute("transList", transService.getTransList());
		return "trans/admin/transEdit";
	}
	//통계정보 수정
	@PostMapping("/transUpdate")
	public String transUpdate(TransVO transVO, Model model) {
		log.info("update Trans...");

		transService.updateTrans(transVO);

		model.addAttribute("transList", transService.getTransList());
		return "trans/admin/transEdit";
	}

	//통계정보 제거
	@GetMapping("/transDelete")
	public String transDelete(TransVO transVO, Model model) {
		log.info("delete Trans...");

		transService.deleteTrans(transVO);
		model.addAttribute("transList", transService.getTransList());
		return "trans/admin/transEdit";

	}

}
