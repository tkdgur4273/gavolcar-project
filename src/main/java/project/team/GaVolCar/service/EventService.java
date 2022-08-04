package project.team.GaVolCar.service;

import java.util.List;

import project.team.GaVolCar.vo.PeventsRentsVO;
import project.team.GaVolCar.vo.RentsVO;

public interface EventService {
	public List<PeventsRentsVO> getPeventsRentsList();
	public List<PeventsRentsVO> getPointsInfo(String user_id);
	
}
