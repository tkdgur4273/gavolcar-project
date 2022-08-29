package project.team.GaVolCar.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import project.team.GaVolCar.page.Criteria;
import project.team.GaVolCar.vo.BoardRentsCarsVO;
import project.team.GaVolCar.vo.BoardVO;

@Mapper
public interface BoardMapper {

	public List<BoardVO> getList();

	// 페이징 부분1
	// Q&A맵퍼
	int qnaUserTotalCount();

	int qnaAdminTotalCount();

	// 후기맵퍼
	int reviewUserTotalCount();

	int reviewaAdminTotalCount();

	// 공지사항맵퍼
	int alertUserTotalCount();

	int alertAdminTotalCount();

	// 페이징 부분2
	// Q&A 고객,관리자 관련 게시글을 찾아오는 내용
	public List<BoardVO> qnaUserListWithPaging(Criteria cri);

	public List<BoardVO> qnaAdminLisWithPaging(Criteria cri);

	// REVIEW 고객,관리자 관련 게시글을 찾아오는 내용
	public List<BoardVO> reviewUserListWithPaging(Criteria cri);

	public List<BoardVO> reviewAdminListWithPaging(Criteria cri);

	// NOTICE 고객,관리자 관련 게시글을 찾아오는 내용
	public List<BoardVO> alertUserListWithPaging(Criteria cri);

	public List<BoardVO> alertAdminListWithPaging(Criteria cri);

	// 파라미터는 URL로 넘어오는 bid값을 의미
	BoardVO read(int bid);

	// 글 쓰기
	void qnaInsert(BoardVO board);

	void reviewInsert(BoardVO board);

	void alertInsert(BoardVO board);

	// 글 수정
	int update(BoardVO board);

	// 글 삭제
	int delete(BoardVO board);

	// 답글 관련
	int reply(BoardVO board);

	// 숨기기 관련
	int hidden(BoardVO board);

	// 조회수 카운트
	int hit(BoardVO board);
	
	//후기용 차량정보
	public List<BoardRentsCarsVO> userCheck(String user_id);
}
