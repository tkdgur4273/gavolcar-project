package project.team.GaVolCar.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import project.team.GaVolCar.vo.PeventsRentsVO;
import project.team.GaVolCar.vo.RentsVO;
import project.team.GaVolCar.vo.TransCountMonthVO;
import project.team.GaVolCar.vo.TransCountTypeVO;
import project.team.GaVolCar.vo.TransVO;

@Mapper
public interface TransMapper {
	public List<TransVO> getTransList();
	public List<TransCountMonthVO> getMonth();
	public List<TransCountTypeVO> getType();
	
}
