package project.team.GaVolCar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.mapper.BoardMapper;
import project.team.GaVolCar.page.Criteria;
import project.team.GaVolCar.vo.BoardRentsCarsVO;
import project.team.GaVolCar.vo.BoardVO;

//비지니스 로직

@Slf4j
@Service
public class BoardServiceImpl implements BoardService {
	// 글전체목록
	@Autowired
	private BoardMapper boardMapper;

	@Override
	public List<BoardVO> getList() {
		log.info("getList() ..");

		return boardMapper.getList();
	}

	// 페이징1 게시글 카운트 부분
	@Override
	public int qnaUserTotalCount() {
		log.info("qnaUserTotalCount()...");
		return boardMapper.qnaUserTotalCount();
	}

	@Override
	public int qnaAdminTotalCount() {
		log.info("qnaAdminTotalCount()...");
		return boardMapper.qnaAdminTotalCount();
	}

	@Override
	public int reviewUserTotalCount() {
		log.info("reviewUserTotalCountt()...");
		return boardMapper.reviewUserTotalCount();
	}

	@Override
	public int reviewAdminTotalCount() {
		log.info("reviewAdminTotalCount()...");
		return boardMapper.reviewaAdminTotalCount();
	}

	@Override
	public int noticeUserTotalCount() {
		log.info("alertUserTotalCount()...");
		return boardMapper.alertUserTotalCount();
	}

	@Override
	public int noticeAdminTotalCount() {
		log.info("alertAdminTotalCount()...");
		return boardMapper.alertAdminTotalCount();
	}

	// 페이징2 카운트 부분 관련 게시글을 찾아오는 내용
	@Override
	public List<BoardVO> qnaUserList(Criteria criteria) {
		log.info("qnaUserList() ..");

		return boardMapper.qnaUserListWithPaging(criteria);
	}

	@Override
	public List<BoardVO> qnaAdminList(Criteria criteria) {
		log.info("qnaAdminList() ..");

		return boardMapper.qnaAdminLisWithPaging(criteria);
	}

	@Override
	public List<BoardVO> reviewUserList(Criteria criteria) {
		log.info("reviewUserList() ..");

		return boardMapper.reviewUserListWithPaging(criteria);
	}

	@Override
	public List<BoardVO> reviewAdminList(Criteria criteria) {
		log.info("reviewadmingetlist() ..");

		return boardMapper.reviewAdminListWithPaging(criteria);
	}

	@Override
	public List<BoardVO> noticeUserList(Criteria criteria) {
		log.info("noticeUserList() ..");

		return boardMapper.alertUserListWithPaging(criteria);
	}

	@Override
	public List<BoardVO> noticeAdminList(Criteria criteria) {
		log.info("noticeAdminList() ..");

		return boardMapper.alertAdminListWithPaging(criteria);
	}

	// 선택한 글보기
	@Override
	public BoardVO read(int bid) {
		log.info("read() ..");

		return boardMapper.read(bid);
	}

	// Q&A 글 등록
	@Override
	public void qnaRegister(BoardVO board) {
		log.info("qnaregister() ..");

		boardMapper.qnaInsert(board);
	}

	// 후기 글 등록
	@Override
	public void reviewRegister(BoardVO board) {
		log.info("reviewregister() ..");

		boardMapper.reviewInsert(board);
	}

	// 공지사항 글 등록
	@Override
	public void noticeRegister(BoardVO board) {
		log.info("alertregister() ..");

		boardMapper.alertInsert(board);
	}

	// 글 수정
	@Override
	public int modify(BoardVO board) {
		log.info("modify() ..");
		return boardMapper.update(board);
	}

	// 글 삭제
	@Override
	public int remove(BoardVO board) {
		log.info("remove() ..");

		return boardMapper.delete(board);
	}

	// 글 답변
	@Override
	public int answer(BoardVO board) {
		log.info("answer() ..");
		return boardMapper.reply(board);
	}

	// 글 숨기기
	@Override
	public int hidden(BoardVO board) {
		log.info("hidden() ..");
		return boardMapper.hidden(board);
	}

	@Override
	public int count(BoardVO board) {
		log.info("count() ..");
		return boardMapper.hit(board);
	}

	@Override
	public List<BoardRentsCarsVO> userCheck(String user_id) {
		log.info("userCheck() ..");
		return boardMapper.userCheck(user_id);
	}

}