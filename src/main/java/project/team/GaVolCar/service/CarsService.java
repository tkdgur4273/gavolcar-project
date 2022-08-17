package project.team.GaVolCar.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import project.team.GaVolCar.vo.AreaVO;
import project.team.GaVolCar.vo.CarsVO;

public interface CarsService {
	//지역리스트 불러오기
	public List<CarsVO> getCarsList();
	//지역 정보자져오기
	CarsVO getCarsInfo(int car_no);
	//지역정보 데이터 생성
	void insertCars(CarsVO carsVO);
	//지역정보 수정
	int updateCars(CarsVO carsVO);
	//지역정보제거
	int deleteCars(CarsVO carsVO);
	//이미지 파일 저장
	void fileSave(MultipartFile file) throws Exception;
	//이미지 파일 삭제
	void fileDelete(CarsVO carsVO);
}
