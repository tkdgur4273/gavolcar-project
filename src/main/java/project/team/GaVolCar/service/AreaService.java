package project.team.GaVolCar.service;

import java.util.List;

import project.team.GaVolCar.vo.AreaVO;

public interface AreaService {
	public List<AreaVO> getAreaList();
	AreaVO getAreaInfo(String area_name);
	void setAreaInfo(AreaVO area);
	int updateAreaInfo(AreaVO area);
	int deleteAreaInfo(AreaVO area);
	
}
