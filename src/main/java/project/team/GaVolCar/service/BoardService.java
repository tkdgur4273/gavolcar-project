package project.team.GaVolCar.service;

import java.util.List;

import project.team.GaVolCar.page.Criteria;
import project.team.GaVolCar.vo.BoardRentsCarsVO;
import project.team.GaVolCar.vo.BoardVO;

public interface BoardService {
	public List<BoardVO> getList();// list 메소드

	// 페이징1
	// Q&A 서비스
	int qnaUserTotalCount();

	int qnaAdminTotalCount();

	// 후기 서비스
	int reviewUserTotalCount();

	int reviewAdminTotalCount();

	// 공지사항 서비스
	int noticeUserTotalCount();

	int noticeAdminTotalCount();

	// 페이징2
	// Q&A 서비스
	public List<BoardVO> qnaUserList(Criteria criteria);

	public List<BoardVO> qnaAdminList(Criteria criteria);

	// 후기 서비스
	public List<BoardVO> reviewUserList(Criteria criteria);

	public List<BoardVO> reviewAdminList(Criteria criteria);

	// 공지사항 서비스
	public List<BoardVO> noticeUserList(Criteria criteria);

	public List<BoardVO> noticeAdminList(Criteria criteria);

	// 글보기 메소드
	BoardVO read(int bid);

	// 글쓰기
	void qnaRegister(BoardVO board);

	void reviewRegister(BoardVO board);

	void noticeRegister(BoardVO board);

	// 글수정
	int modify(BoardVO board);

	// 글삭제
	int remove(BoardVO board);

	// 글 답변
	int answer(BoardVO board);

	// 글 숨기기
	int hidden(BoardVO board);

	// 조회수 카운트
	int count(BoardVO board);
	
	//후기관련
	public List<BoardRentsCarsVO> userCheck (String user_id);

}
