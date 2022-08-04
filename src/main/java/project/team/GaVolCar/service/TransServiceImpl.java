package project.team.GaVolCar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.mapper.TransMapper;
import project.team.GaVolCar.vo.PeventsRentsVO;
import project.team.GaVolCar.vo.RentsVO;
import project.team.GaVolCar.vo.TransCountMonthVO;
import project.team.GaVolCar.vo.TransCountTypeVO;
import project.team.GaVolCar.vo.TransVO;

@Slf4j
@Service
public class TransServiceImpl implements TransService{
	
	@Autowired
	private TransMapper transMapper;

	@Override
	public List<TransVO> getTransList() {
		log.info("getTransList()...");
		
		return transMapper.getTransList();
	}

	@Override
	public List<TransCountMonthVO> getMonth() {
		log.info("getMonth()...");
		
		return transMapper.getMonth();
	}

	@Override
	public List<TransCountTypeVO> getType() {
		log.info("getType()...");
		
		return transMapper.getType();
	}
	
	
	
	
	
}
