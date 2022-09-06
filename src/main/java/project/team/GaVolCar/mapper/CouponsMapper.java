package project.team.GaVolCar.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import project.team.GaVolCar.vo.CeventsVO;
import project.team.GaVolCar.vo.CouponsVO;

@Mapper
public interface CouponsMapper {

	public List<CouponsVO> getCouponsInfo(String user_id);//사용자 쿠폰 정보
	public List<CeventsVO> getAllCouponsInfo(String user_id);//사용자의 쿠폰이벤트 정보
	
}
