package project.team.GaVolCar.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import project.team.GaVolCar.vo.PeventsRentsVO;
import project.team.GaVolCar.vo.RentsVO;

@Mapper
public interface EventMapper {
	public List<PeventsRentsVO> getPeventsRentsList();
	public List<PeventsRentsVO> getPointData(String user_id);

}
