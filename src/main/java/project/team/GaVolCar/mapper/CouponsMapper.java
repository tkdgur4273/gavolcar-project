package project.team.GaVolCar.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import project.team.GaVolCar.vo.CeventsVO;
import project.team.GaVolCar.vo.CouponsVO;

@Mapper
public interface CouponsMapper {

	public List<CouponsVO> getCouponsInfo(String user_id);
	public List<CeventsVO> getAllCouponsInfo(String user_id);
	
}
