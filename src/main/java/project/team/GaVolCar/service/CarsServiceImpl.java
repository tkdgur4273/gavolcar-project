package project.team.GaVolCar.service;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.mapper.CarsMapper;
import project.team.GaVolCar.vo.CarsVO;

@Slf4j
@Service
public class CarsServiceImpl implements CarsService {
	
	@Autowired
	private CarsMapper carsMapper;
	
	
	@Override
	public List<CarsVO> getCarsList(){
		log.info("getCarsList is working....");
		return carsMapper.getCarsList();
	}
	
	@Override
	public CarsVO getCarsInfo(int car_no) {
		log.info("getRead is working....");
		return carsMapper.getCarsInfo(car_no);
	}
	
	@Override
	public void insertCars(CarsVO carsVO) {
		log.info("areaRegister is working....");
		carsMapper.insertCars(carsVO);;	
	}
	
	@Override
	public int updateCars(CarsVO carsVO) {
		log.info("areaModify is working .....");
		return carsMapper.updateCars(carsVO);
	}
	
	@Override
	public int deleteCars(CarsVO carsVO) {
		log.info("areaRemove is working .....");
		return carsMapper.deleteCars(carsVO);
	}

	@Override
	public void fileSave(MultipartFile file) throws Exception {
		log.info(file.getOriginalFilename());
		Path directory = Paths.get("C:\\Users\\skype\\git\\GaVolCarProject\\src\\main\\resources\\static\\carsimages").toAbsolutePath().normalize();

		// 해당 경로까지 디렉토리를 모두 만든다.
		Files.createDirectories(directory);
	    
		// 파일명을 수정한다.
		String fileName = StringUtils.cleanPath(file.getOriginalFilename());

		// 파일명에 '..' 문자가 들어 있다면 오류를 발생하고 아니라면 진행(해킹및 오류방지)
		Assert.state(!fileName.contains(".."), "Name of file cannot contain '..'");
		
		// 파일을 저장할 경로를 Path 객체로 받는다.
		Path targetPath = directory.resolve(fileName).normalize();

		// 파일이 이미 존재하는지 확인하여 존재한다면 오류를 발생하고 없다면 저장한다.
		
		Assert.state(!Files.exists(targetPath), fileName + " File already exists.");
		file.transferTo(targetPath);
	
	
		
	}

	@Override
	public void fileDelete(CarsVO carsVO) {
		File file = new File("C:\\Users\\skype\\git\\GaVolCarProject\\src\\main\\resources\\static\\carsimages\\" + carsVO.getCar_img());
		log.info("C:\\Users\\skype\\git\\GaVolCarProject\\src\\main\\resources\\static\\carsimages\\" + carsVO.getCar_img());
		if(file.exists()) { // 파일이 존재하면
			file.delete(); // 파일 삭제	
		}
		
	}

	
	
}
