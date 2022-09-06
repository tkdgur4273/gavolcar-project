package project.team.GaVolCar.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import project.team.GaVolCar.vo.AreaVO;

@Mapper
public interface AreaMapper {
	public List<AreaVO> getAreaList();//모든지역정보
	AreaVO areaRead(String area_name);//개별지역 정보
	void areaInsert(AreaVO area);//지역정보 추가
	int areaUpdate(AreaVO area);//지역정보 수정
	int areaDelete(AreaVO area);//지역정보 삭제

}
