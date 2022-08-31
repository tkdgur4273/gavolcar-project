package project.team.GaVolCar.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import project.team.GaVolCar.vo.BoardsVO;
import project.team.GaVolCar.vo.CeventsBoardsVO;
import project.team.GaVolCar.vo.CeventsVO;
import project.team.GaVolCar.vo.PeventsRentsVO;

@Mapper
public interface EventMapper {
	public List<PeventsRentsVO> getPeventsRentsList();
	public List<PeventsRentsVO> getPointData(String user_id);
	
	
	public List<CeventsVO> getCeventsList();
	public List<CeventsBoardsVO> getCeventBoardList();
	public List<CeventsBoardsVO> getMemberCeventBoardList(String user_id);
	
	public BoardsVO forB_no();
	public void givecoupon(CeventsVO ceventVO);


}
