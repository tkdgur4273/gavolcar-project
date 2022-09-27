package project.team.GaVolCar.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import project.team.GaVolCar.vo.PeventsRentsVO;
import project.team.GaVolCar.vo.RentsVO2;
import project.team.GaVolCar.vo.TransCountMonthVO;
import project.team.GaVolCar.vo.TransCountTypeVO;
import project.team.GaVolCar.vo.TransVO;

@Mapper
public interface TransMapper {
	public List<TransVO> getTransList();//모든 통계정보
	public List<TransCountMonthVO> getMonth();//월별 통계정보
	public List<TransCountTypeVO> getType();//제조사별 통계정보
	
	public void insertTrans(TransVO transVO);//통계정보 추가
	public void updateTrans(TransVO transVO);//통계정보 수정
	public void deleteTrans(TransVO transVO);//통계정보 삭제
	
}
