package project.team.GaVolCar.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import project.team.GaVolCar.vo.PeventsRentsVO;

@Mapper
public interface EventMapper {
	public List<PeventsRentsVO> getPeventsRentsList();


}
