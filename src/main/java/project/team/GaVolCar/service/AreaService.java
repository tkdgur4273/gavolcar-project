package project.team.GaVolCar.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import project.team.GaVolCar.vo.AreaVO;

public interface AreaService {
	//지역리스트 불러오기
	public List<AreaVO> getAreaList();
	//지역 정보자져오기
	AreaVO areaRead(String area_name);
	//지역정보 데이터 생성
	void areaRegister(AreaVO area);
	//지역정보 수정
	int areaModify(AreaVO area);
	//지역정보제거
	int areaRemove(AreaVO area);
	//이미지 파일 저장
	void fileSave(MultipartFile file) throws Exception;
	//이미지 파일 삭제
	void fileDelete(AreaVO areaVO);
}
