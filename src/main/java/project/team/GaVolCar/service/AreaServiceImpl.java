package project.team.GaVolCar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.mapper.AreaMapper;
import project.team.GaVolCar.vo.AreaVO;

@Slf4j
@Service
public class AreaServiceImpl implements AreaService {
	
	@Autowired
	private AreaMapper areaMapper;
	
	
	@Override
	public List<AreaVO> getAreaList() {
		log.info("getAreaList is working....");
		return areaMapper.getAreaList();
	}
	
	@Override
	public AreaVO areaRead(String area_name) {
		log.info("getRead is working....");
		return areaMapper.areaRead(area_name);
	}
	
	@Override
	public void areaRegister(AreaVO area) {
		log.info("areaRegister is working....");
		areaMapper.areaInsert(area);	
	}
	
	@Override
	public int areaModify(AreaVO area) {
		log.info("areaModify is working .....");
		return areaMapper.areaUpdate(area);
	}
	
	@Override
	public int areaRemove(AreaVO area) {
		log.info("areaRemove is working .....");
		return areaMapper.areaDelete(area);
	}
	
}
