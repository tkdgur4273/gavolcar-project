package project.team.GaVolCar.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.service.RentService;
import project.team.GaVolCar.vo.CarsVO;
import project.team.GaVolCar.vo.RentsVO;
import project.team.GaVolCar.vo.RentsVO2;
import project.team.GaVolCar.vo.UsersVO;

@Slf4j
@Controller
public class RentsController {

	@Autowired
	private RentService rentsService;

	@GetMapping("/user/rentscheck")
	public String getRentsList(RentsVO2 rentsVO2, Model model){
		log.info("getRentsList().....");
		model.addAttribute("list", rentsService.getRentList2(rentsVO2.getUser_id()));

		return "rents/user/rents_check";
	}

	@GetMapping("/deletePopup")
	public String deletePopup(RentsVO2 rentsVO2, Model model){
		log.info("deletePopup().....");
		return "rents/user/deletePopup";
	}
	@GetMapping("/modifyPopup")
	public String modifyPopup(RentsVO2 rentsVO2, Model model){
		log.info("deletePopup().....");
		return "rents/user/modifyPopup";
	}

	@GetMapping("/admin/rentscheck")
	public String getAdminRentsList(Model model){
		log.info("getAdminRentsList().....");
		model.addAttribute("list", rentsService.getAllRentsList());

		return "rents/admin/rents_check";
	}

	@GetMapping("/admindeletePopup")
	public String admindeletePopup(RentsVO2 rentsVO2, Model model){
		log.info("deletePopup().....");
		return "rents/admin/deletePopup";
	}
	@GetMapping("/adminmodifyPopup")
	public String adminmodifyPopup(RentsVO2 rentsVO2, Model model){
		log.info("deletePopup().....");
		return "rents/admin/modifyPopup";
	}

	@GetMapping("/admin/rentsearch")
	public String Rentsearch(String user_id, Model model){
		log.info("Rentsearch().....");
		model.addAttribute("list", rentsService.getRentList2(user_id));

		return "rents/admin/rents_check_search";
	}




	@GetMapping("rents_view")
	public String rents() {
		log.info("rents_view()...");

		return "rents_view";
	}

	//�삁�빟�븯湲� + �쉶�썝�젙蹂� 遺덈윭�삤湲� getRentsUsers
	@GetMapping("/rez/reserve")
	public String reserve() {
		log.info("reserve()...");

		return "rez/reserve";
	}

	//�삁�빟�젙蹂� �궫�엯
	@GetMapping("/insertRents")
	public String insertRents() {
		log.info("insertRents....");

		return "rez/rez_final";
	}

	// rez_no, rent_start_date, rent_end_date, final_cost, hipass, baby_car_seat, user_id, car_no

	//	@RequestMapping(value="/insertRents")
	//    public ModelAndView formTag(HttpServletRequest request){
	//        ModelAndView mv = new ModelAndView();
	//        int rez_no = Integer.parseInt(request.getParameter("rez_no").trim());
	//        String rent_start_date  = request.getParameter("rent_start_date");    
	//        String rent_end_date  = request.getParameter("rent_end_date");
	//        String final_cost  = request.getParameter("final_cost"); 
	//        int hipass = Integer.parseInt(request.getParameter("hipass").trim());
	//        int baby_car_seat = Integer.parseInt(request.getParameter("baby_car_seat").trim());
	//        String user_id  = request.getParameter("user_id");
	//        int car_no = Integer.parseInt(request.getParameter("car_no").trim());
	//        
	//        return mv;
	//    }

	@RequestMapping("/insertRents")
	public String formTag(RentsVO rentsVO, Model model){
		log.info("insert wait...");
		if(rentsVO.getCar_no() == 0) {
			return "rez/reserve";
		}
		else if(rentsVO.getUser_id() == "") {
			return "rez/reserve";
		}
		else {
			model.addAttribute("rentsinfo",rentsVO);
			return "/pay";
		}

	}

	@RequestMapping("/insertRents2")
	public String formTag(RentsVO rentsVO){
		log.info("insert wait...");
		rentsService.insertRents(rentsVO);
		return "main";
	}

	//�삁�빟議고쉶 getRentsInfo
	@GetMapping("/rez/reservation")
	public String reservation(RentsVO urentVO, Model model) {
		log.info("reservation()...");

		int rez_no = urentVO.getRez_no();
		model.addAttribute("cno", rentsService.getRentsInfo(rez_no));

		return "rez/reservation";
	}


	//理쒖쥌 �솗�씤李� getRentsInfo
	@GetMapping("/rez/rez_final")
	public String rez_final(RentsVO rentVO, Model model) {
		log.info("rez_final()...");

		return "rez/rez_final";
	}

	//李⑤웾 由ъ뒪�듃 �샇異�
	@GetMapping("/rez/car_search")
	public List<CarsVO> getRentsCarsList(Model model) {
		log.info("getRentsCarsList()....");

		model.addAttribute("getRentsCarsList", rentsService.getRentsCarsList());

		return rentsService.getRentsCarsList();
	}

	//�쉶�썝 由ъ뒪�듃 �샇異�
	@GetMapping("/rez/user_search")
	public List<UsersVO> getRentsUsersList(Model model) {
		log.info("getRentsUsersList()....");

		model.addAttribute("getRentsUsersList", rentsService.getRentsUsersList());

		return rentsService.getRentsUsersList();
	}
}
