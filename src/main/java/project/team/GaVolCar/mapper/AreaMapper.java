package project.team.GaVolCar.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import project.team.GaVolCar.vo.AreaVO;

@Mapper
public interface AreaMapper {
	public List<AreaVO> getAreaList();
	AreaVO areaRead(String area_name);
	void areaInsert(AreaVO area);
	int areaUpdate(AreaVO area);
	int areaDelete(AreaVO area);

}
