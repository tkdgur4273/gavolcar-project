package project.team.GaVolCar.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import project.team.GaVolCar.vo.AreaVO;
import project.team.GaVolCar.vo.RentsVO;

@Mapper
public interface RentsMapper {
	public List<RentsVO> getRentsList(String user_id);//특정인물의 랜트내역
	public List<RentsVO> getAllRentsList();//모든 랜트 내역

}
