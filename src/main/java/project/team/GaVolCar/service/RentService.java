package project.team.GaVolCar.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import project.team.GaVolCar.vo.AreaVO;
import project.team.GaVolCar.vo.RentsVO;

public interface RentService {
	
	public List<RentsVO> getRentList(String user_id);
	public List<RentsVO> getAllRentsList();

}
