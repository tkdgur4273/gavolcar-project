package project.team.GaVolCar.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import project.team.GaVolCar.vo.BoardsVO;
import project.team.GaVolCar.vo.CeventsBoardsVO;
import project.team.GaVolCar.vo.CeventsVO;
import project.team.GaVolCar.vo.PeventsRentsVO;

@Mapper
public interface EventMapper {
	public List<PeventsRentsVO> getPeventsRentsList();//모든 포인트 정보
	public List<PeventsRentsVO> getPointData(String user_id);//특정인물의 포인트 정보
	
	
	public List<CeventsVO> getCeventsList();//모든 쿠폰이벤트 데이터
	public List<CeventsBoardsVO> getCeventBoardList();//모든 보드, 쿠폰이벤트 데이터 join정보
	public List<CeventsBoardsVO> getMemberCeventBoardList(String user_id);//특정인물의 보드, 쿠폰이벤트 데이터 join정보
	public BoardsVO forB_no();//모든 보드 정보
	
	public void givecoupon(CeventsVO ceventVO);//쿠폰 지급, 쿠폰이벤트 데이터 추가
	public void insertCouponInfo(CeventsVO ceventVO);//쿠폰 지급, 쿠폰 데이터 추가
}
