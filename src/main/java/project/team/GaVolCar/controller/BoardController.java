package project.team.GaVolCar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.page.Criteria;
import project.team.GaVolCar.page.PageVO;
import project.team.GaVolCar.service.BoardService;
import project.team.GaVolCar.service.EventService;
import project.team.GaVolCar.vo.BoardRentsCarsVO;
import project.team.GaVolCar.vo.BoardVO;
import project.team.GaVolCar.vo.CeventsVO;

@Slf4j
@Controller
public class BoardController {

	@Autowired
	private BoardService service;
	@Autowired
	private EventService eventService;

//================================================Q&A게시판============================================================

//---------------------------------------------------고객-------------------------------------------------------------

	// Q&A구분 고객 리스트
	@GetMapping("/qna/userList")
	public String qnaUserList(Criteria cri, Model model) {
		log.info("qnaUserList()..");
		log.info("qnaUserList() Criteria" + cri);

		model.addAttribute("qnaUserList", service.qnaUserList(cri));

		int total = service.qnaUserTotalCount();
		log.info("qnaUserTotal" + total);

		model.addAttribute("pageMaker", new PageVO(cri, total));

		return "board/qna/user/list";// list.jsp로 이동
	}

	// 고객이 쓴 질문 게시판 보는곳 수정,삭제
	@GetMapping("/qna/userContent")
	public String qnaUserContent(BoardVO boardVO, Model model) {
		int bid = boardVO.getB_no();

		service.count(boardVO);// 조회수 카운트
		model.addAttribute("qnaUserContent", service.read(bid));

		return "board/qna/user/content_view";// content_view.jsp로 이동
	}

	// 고객 글 작성 게시판
	@GetMapping("/qna/userWriteView")
	public String qnaUserWriteView() {
		log.info("qnaUserWriteView()..");

		return "board/qna/user/write_view";// write_view.jsp로 이동
	}

	// 글 쓰기
	@PostMapping("/qna/userWrite")
	public String qnaUserWrite(BoardVO boardVO) {
		log.info("qnaUserWrite()..");

		if (boardVO.getB_title() == "") {
			log.info("qnaUserTitle()..");

			return "redirect:/qna/userList";

		} else {
			service.qnaRegister(boardVO);

			return "redirect:/qna/userList";// 유져가 글을 쓸 경우 다시 list 치고 들어오도록redirect해준다.
		}
	}

	// 글 수정
	@PostMapping("/qna/userModify")
	public String qnaUserModify(BoardVO boardVO) {
		log.info("qnaUserModify()..");

		if (boardVO.getB_title() == "") {
			log.info("qnaUserTitle()..");

			return "redirect:/qna/userList";

		} else {
			int mdf = service.modify(boardVO);
			log.info("qnaUserModify().. result number::" + mdf);

			return "redirect:/qna/userList";// 유져가 수정할 경우 다시 list 치고 들어오도록redirect해준다.
		}
	}

	// 글 삭제
	@GetMapping("/qna/userRemove")
	public String qnaUserRemove(BoardVO boardVO) {
		log.info("qnaUserRemove()..");

		int dlt = service.remove(boardVO);

		log.info("qnaUserRemove().. result number::" + dlt);

		return "redirect:/qna/userList";// 유져가 삭제할 경우 다시 list 치고 들어오도록redirect해준다.
	}

//---------------------------------------------------관리자-------------------------------------------------------------
	// Q&A구분 관리자 리스트
	@GetMapping("/qna/adminList")
	public String qnaAdminList(Criteria cri, Model model) {
		log.info("qnaAdminList()..");
		log.info("qnaAdminList() Criteria" + cri);

		model.addAttribute("qnaAdminList", service.qnaAdminList(cri));

		int total = service.qnaUserTotalCount();
		log.info("qnaAdminTotal" + total);

		model.addAttribute("pageMaker", new PageVO(cri, total));

		return "board/qna/admin/list";// list.jsp로 이동
	}

	// 고객이 쓴 질문 게시판 보는곳 답변 가능
	@GetMapping("/qna/adminContent")
	public String qnaAdminContent(BoardVO boardVO, Model model) {
		int bid = boardVO.getB_no();

		model.addAttribute("qnaAdminContent", service.read(bid));

		return "board/qna/admin/content_view";// content_view.jsp로 이동
	}

	// 관리자 답변
	@PostMapping("/qna/adminAnswer")
	public String qnaAdminAnswer(BoardVO boardVO) {
		log.info("qnaAdminAnswer()..");

		int asr = service.answer(boardVO);

		log.info("qnaAdminAnswer().. result number::" + asr);

		return "redirect:/qna/adminList";// 관리자가 수정할 경우 다시 list 치고 들어오도록redirect해준다.
	}

	// 글 숨기기
	@GetMapping("/qna/adminHidden")
	public String qnaAdminHidden(BoardVO boardVO) {
		log.info("qnaAdminHidden()..");

		int hidn = service.hidden(boardVO);

		log.info("qnaAdminHidden().. result number::" + hidn);

		return "redirect:/qna/adminList";// 관리자가 유져글을 숨길 경우 다시 list 치고 들어오도록redirect해준다.
	}

//================================================후기 게시판============================================================

//---------------------------------------------------고객-------------------------------------------------------------
	// REVIEW구분 고객 리스트
	@GetMapping("/review/userList")
	public String reviewUserList(Criteria cri, Model model) {
		log.info("reviewUserList()..");
		log.info("reviewUserList() Criteria" + cri);

		model.addAttribute("reviewUserList", service.reviewUserList(cri));

		int total = service.reviewUserTotalCount();
		log.info("reviewUserTotal" + total);

		model.addAttribute("pageMaker", new PageVO(cri, total));

		return "board/review/user/list";// list.jsp로 이동
	}

	// 고객이 쓴 리뷰 게시판 보는곳
	@GetMapping("/review/userContent")
	public String reviewUserContent(BoardVO boardVO, Model model) {
		int bid = boardVO.getB_no();

		service.count(boardVO);// 조회수 카운트
		model.addAttribute("reviewUserContent", service.read(bid));

		return "board/review/user/content_view";// content_view.jsp로 이동
	}

	// 고객 글 작성 게시판 보는곳
	@GetMapping("/review/chooseCar")
	public String reviewchooseCar(String user_id, Model model) {
		log.info("reviewchooseCar()..");
		if(service.userCheck(user_id).size() == 0) {
			return "board/review/user/warnning";
		}
		else {
			model.addAttribute("cars", service.userCheck(user_id));
		return "board/review/user/chooseCar";// write_view.jsp로 이동
		}
	}
	
	@GetMapping("/review/userWriteView")
	public String reviewUserWriteView(BoardRentsCarsVO brc, Model model) {
		log.info("reviewUserWriteView()..");
		
			model.addAttribute("cars", brc);
		return "board/review/user/write_view";// write_view.jsp로 이동
		
	}
	
	

	// 글 쓰기
	@PostMapping("/review/userWrite")
	public String reviewUserWrite(BoardVO boardVO) {
		log.info("reviewUserWrite()..");

		if (boardVO.getB_title() == "") {
			log.info("reviewUserTitle()..");
			return "redirect:/review/userList";
		} else {
			
			if(eventService.getCouponInfo(boardVO.getUser_id()).size()==0) {
				
				service.reviewRegister(boardVO);
				log.info("reviewRegister().....");
				
				CeventsVO cevent = new CeventsVO();
				cevent.setMember_id(boardVO.getMember_id());
				cevent.setB_no(eventService.forB_no().getB_no());
				eventService.givecoupon(cevent);
				eventService.insertCouponInfo(cevent);
				
				return "redirect:/cevent_view_user?user_id="+boardVO.getUser_id();
			}
			else {
				service.reviewRegister(boardVO);
				return "redirect:/review/userList";// 유져가 글을 쓸 경우 다시 list 치고 들어오도록redirect해준다.
			}
		}
	}

	// 글 수정
	@PostMapping("/review/userModify")
	public String reviewUserModify(BoardVO boardVO) {
		log.info("reviewUserModify()..");

		if (boardVO.getB_title() == "") {
			log.info("reviewUserTitle()..");
			return "redirect:/review/userList";
		} else {
			int mdf = service.modify(boardVO);

			log.info("reviewUserModify().. result number::" + mdf);

			return "redirect:/review/userList";// 유져가 수정할 경우 다시 list 치고 들어오도록redirect해준다.
		}
	}

//--------------------------------------------------관리자-------------------------------------------------------------	
	// REVIEW구분 관리자 리스트
	@GetMapping("/review/adminList")
	public String reviewAdminList(Criteria cri, Model model) {
		log.info("reviewAdminList()..");
		log.info("reviewAdminList() Criteria" + cri);

		model.addAttribute("reviewAdminList", service.reviewAdminList(cri));

		int total = service.reviewAdminTotalCount();
		log.info("reviewaAdminTotal" + total);

		model.addAttribute("pageMaker", new PageVO(cri, total));

		return "board/review/admin/list";// list.jsp로 이동
	}

	// 고객이 쓴 리뷰 게시판 보는곳
	@GetMapping("/review/adminContent")
	public String reviewAdminContent(BoardVO boardVO, Model model) {
		int bid = boardVO.getB_no();

		model.addAttribute("reviewAdminContent", service.read(bid));

		return "board/review/admin/content_view";// content_view.jsp로 이동
	}

	// 글 숨기기
	@GetMapping("/review/adminHidden")
	public String hidden(BoardVO boardVO) {
		log.info("hidden()..");

		int hidn = service.hidden(boardVO);

		log.info("hidden().. result number::" + hidn);

		return "redirect:adminList";// 관리자가 유져글을 숨길 경우 다시 list 치고 들어오도록redirect해준다.
	}

//==============================================공지사항 게시판============================================================

//---------------------------------------------------고객-------------------------------------------------------------
	// 고객 리스트
	@GetMapping("/notice/userList")
	public String noticeUserList(Criteria cri, Model model) {
		log.info("noticeUserList()..");
		log.info("noticeUserList() Criteria" + cri);

		model.addAttribute("noticeUserList", service.noticeUserList(cri));

		int total = service.noticeUserTotalCount();
		log.info("noticeUserTotal" + total);

		model.addAttribute("pageMaker", new PageVO(cri, total));

		return "board/notice/user/list";// list.jsp로 이동
	}

	// 고객이 관리자가 쓴 공지사항 게시판 보는곳(수정,삭제는 지우기)
	@GetMapping("/notice/userContent")
	public String noticeUserContent(BoardVO boardVO, Model model) {
		int bid = boardVO.getB_no();

		service.count(boardVO);// 조회수 카운트
		model.addAttribute("noticeUserContent", service.read(bid));

		return "board/notice/user/content_view";// content_view.jsp로 이동
	}

//--------------------------------------------------관리자-------------------------------------------------------------

	// 관리자 리스트
	@GetMapping("notice/adminList")
	public String noticeAdminList(Criteria cri, Model model) {
		log.info("noticeAdminList()..");
		log.info("noticeAdminList() Criteria" + cri);

		model.addAttribute("noticeAdminList", service.noticeAdminList(cri));

		int total = service.noticeAdminTotalCount();
		log.info("noticeAdminTotal" + total);

		model.addAttribute("pageMaker", new PageVO(cri, total));

		return "board/notice/admin/list";// list.jsp로 이동
	}

	// 관리자가 쓴 공지사항 게시판 내용 보는곳 수정,삭제
	@GetMapping("/notice/adminContent")
	public String noticeAdminContent(BoardVO boardVO, Model model) {
		int bid = boardVO.getB_no();

		model.addAttribute("noticeAdminContent", service.read(bid));

		return "board/notice/admin/content_view";// content_view.jsp로 이동
	}

	// 관리자 글 작성 게시판
	@GetMapping("/notice/adminWriteView")
	public String noticeAdminWriteView() {
		log.info("noticeAdminWriteView()..");

		return "board/notice/admin/write_view";// write_view.jsp로 이동
	}

	// 공지사항 글 쓰기
	@PostMapping("/notice/adminWrite")
	public String noticeAdminrWrite(BoardVO boardVO) {
		log.info("noticeAdminrWrite()..");

		if (boardVO.getB_title() == "") {
			log.info("noticeAdminTitle()..");

			return "redirect:/notice/adminList";

		} else {
			service.noticeRegister(boardVO);

			return "redirect:/notice/adminList";// 관리가 글을 쓸 경우 다시 list 치고 들어오도록redirect해준다.
		}
	}

	// 글 수정
	@PostMapping("/notice/adminModify")
	public String noticeAdminModify(BoardVO boardVO) {
		log.info("noticeAdminModify()..");

		int mdf = service.modify(boardVO);

		if (boardVO.getB_title() == "") {
			log.info("noticeAdminTitle()..");
			return "redirect:admin/notice/adminList";
		} else {
			log.info("noticeAdminModify().. result number::" + mdf);

			return "redirect:/notice/adminList";// 관리자가 수정할 경우 다시 list 치고 들어오도록redirect해준다.
		}
	}

	// 글 삭제
	@GetMapping("/notice/adminRemove")
	public String noticeAdminRemove(BoardVO boardVO) {
		log.info("noticeAdminRemove()..");

		int dlt = service.remove(boardVO);

		log.info("noticeAdminRemove().. result number::" + dlt);

		return "redirect:/notice/adminList";// 관리자가 삭제할 경우 다시 list 치고 들어오도록redirect해준다.
	}
}
