package project.team.GaVolCar.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import project.team.GaVolCar.vo.CarsVO;

@Mapper
public interface CarsMapper {
	public List<CarsVO> getCarsList();
	public CarsVO getCarsInfo(int car_no);
	public void insertCars(CarsVO carsVO);
	public int updateCars(CarsVO carsVO);
	public int deleteCars(CarsVO carsVO);
	
}
