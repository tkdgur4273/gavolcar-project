package project.team.GaVolCar.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import project.team.GaVolCar.vo.CarsVO;
import project.team.GaVolCar.vo.RentsVO;
import project.team.GaVolCar.vo.RentsVO2;
import project.team.GaVolCar.vo.UsersVO;

@Mapper
public interface RentsMapper {
	public List<RentsVO2> getRentsList2(String user_id);//특정인물의 랜트내역
	public List<RentsVO2> getAllRentsList();//모든 랜트 내역
	
	public List<RentsVO> getRentsList(String user_id);
	public UsersVO getRentsUsers(String user_id);
	public RentsVO getRentsInfo(int rez_no);
	public List<CarsVO> getRentsCarsList();
	public List<UsersVO> getRentsUsersList();
	public CarsVO getRentsCarsInfo(int car_no);
	public void insertRents(RentsVO rentsVO);
	public int updateRents(RentsVO rentsVO);
	public int deleteRents(RentsVO rentsVO);	

	
	
}
