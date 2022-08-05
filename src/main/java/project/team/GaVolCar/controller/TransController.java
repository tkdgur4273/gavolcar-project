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
import project.team.GaVolCar.service.TransService;
import project.team.GaVolCar.vo.AreaVO;
import project.team.GaVolCar.vo.TransVO;

@Slf4j
@Controller
public class TransController {
	
	@Autowired
	private TransService transService;
	
	@GetMapping("/trans")
	public String getTransList(Model model){
		log.info("getTransList().....");
		model.addAttribute("transList", transService.getTransList());
		model.addAttribute("month", transService.getMonth());
		model.addAttribute("company", transService.getType());
		
		
		return "trans/translist";
	}
	
	
	@GetMapping("/admin/transEdit")
	public String getTransEdit(Model model){
		log.info("getTransList().....");
		model.addAttribute("transList", transService.getTransList());
		
		return "trans/admin/transEdit";
	}
	
	@PostMapping("/transWrite")
	public String transWrite(TransVO transVO, Model model) {
		log.info("write Trans...");
		
		transService.insertTrans(transVO);
		
		model.addAttribute("transList", transService.getTransList());
		return "trans/admin/transEdit";
	}
	
	@PostMapping("/transUpdate")
	public String transUpdate(TransVO transVO, Model model) {
		log.info("update Trans...");
		
		transService.updateTrans(transVO);
		
		model.addAttribute("transList", transService.getTransList());
		return "trans/admin/transEdit";
	}
	
	
	@GetMapping("/transDelete")
	public String transDelete(TransVO transVO, Model model) {
		log.info("delete Trans...");
		
		transService.deleteTrans(transVO);
		model.addAttribute("transList", transService.getTransList());
		return "trans/admin/transEdit";
		
	}
		
}
 