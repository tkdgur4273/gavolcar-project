package project.team.GaVolCar.service;

import java.util.List;

import project.team.GaVolCar.vo.PeventsRentsVO;
import project.team.GaVolCar.vo.RentsVO;

public interface EventService {
	//모든 포인트 정보가져오기
	public List<PeventsRentsVO> getPeventsRentsList();
	//특정 사용자의 포인트 정보 가져오기
	public List<PeventsRentsVO> getPointsInfo(String user_id);
	
}
