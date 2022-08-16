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

	@Override
	public void fileSave(MultipartFile file) throws Exception {
		log.info(file.getOriginalFilename());
		Path directory = Paths.get("C:\\Users\\skype\\git\\GaVolCarProject\\src\\main\\resources\\static\\areaimage").toAbsolutePath().normalize();

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
	public void fileDelete(AreaVO areaVO) {
		File file = new File("C:\\Users\\skype\\git\\GaVolCarProject\\src\\main\\resources\\static\\areaimage\\" + areaVO.getArea_img());
		log.info("C:\\Users\\skype\\git\\GaVolCarProject\\src\\main\\resources\\static\\areaimage\\" + areaVO.getArea_img());
		if(file.exists()) { // 파일이 존재하면
			file.delete(); // 파일 삭제	
		}
		
	}

	
	
}
