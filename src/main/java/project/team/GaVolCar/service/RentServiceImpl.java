package project.team.GaVolCar.service;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.mapper.AreaMapper;
import project.team.GaVolCar.mapper.RentsMapper;
import project.team.GaVolCar.vo.AreaVO;
import project.team.GaVolCar.vo.RentsVO;

@Slf4j
@Service
public class RentServiceImpl implements RentService {
	
	@Autowired
	private RentsMapper rentsMapper;

	@Override
	public List<RentsVO> getRentList(String user_id) {
		log.info("getRentList()......");
		List<RentsVO> rentVO2= rentsMapper.getRentsList(user_id);
		for(RentsVO e: rentVO2) {
			if(e.getHipass()==1) {
				e.setHipass2("O");
			}
			if(e.getBaby_car_seat()==1) {
				e.setBaby_car_seat2("O");
			}
		}
		
		
		return  rentVO2;
	}

	@Override
	public List<RentsVO> getAllRentsList() {
		log.info("getAllRentsList()....");
		List<RentsVO> rentVO2= rentsMapper.getAllRentsList();
		for(RentsVO e: rentVO2) {
			if(e.getHipass()==1) {
				e.setHipass2("O");
			}
			if(e.getBaby_car_seat()==1) {
				e.setBaby_car_seat2("O");
			}
		}
		
		
		return  rentVO2;
	}
	

	
	
	
}
