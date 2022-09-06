package project.team.GaVolCar.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import project.team.GaVolCar.vo.CarsVO;

@Mapper
public interface CarsMapper {
	public List<CarsVO> getCarsList(); //모든 차량 정보
	public CarsVO getCarsInfo(int car_no);//특정 차량정보
	public void insertCars(CarsVO carsVO);//차량정보 추가
	public int updateCars(CarsVO carsVO);//차량정보 수정
	public int deleteCars(CarsVO carsVO);//차량정보 삭제
	
}
