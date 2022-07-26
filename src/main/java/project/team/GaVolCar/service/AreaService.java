package project.team.GaVolCar.service;

import java.util.List;

import project.team.GaVolCar.vo.AreaVO;

public interface AreaService {
	public List<AreaVO> getAreaList();
	AreaVO areaRead(String area_name);
	void areaRegister(AreaVO area);
	int areaModify(AreaVO area);
	int areaRemove(AreaVO area);
	
}
