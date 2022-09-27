package project.team.GaVolCar.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import project.team.GaVolCar.vo.AreaVO;
import project.team.GaVolCar.vo.CarsVO;
import project.team.GaVolCar.vo.RentsVO;
import project.team.GaVolCar.vo.RentsVO2;
import project.team.GaVolCar.vo.UsersVO;

public interface RentService {
	
	public List<RentsVO2> getRentList2(String user_id);
	public List<RentsVO2> getAllRentsList();
	
	
	//�삁�빟 由ъ뒪�듃 遺덈윭�삤湲�
	public List<RentsVO> getRentsList(String user_id); 
	//�삁�빟 �젙蹂� 媛��졇�삤湲�
	RentsVO getRentsInfo(int rez_no);
	//�삁�빟 �뜲�씠�꽣 �깮�꽦
	void insertRents(RentsVO rentsVO);
	//�삁�빟 �뜲�씠�꽣 �닔�젙
	int updateRents(RentsVO rentsVO);
	//�삁�빟 �뜲�씠�꽣 �궘�젣
	int deleteRents(RentsVO rentsVO);
	//�쉶�썝 由ъ뒪�듃 遺덈윭�삤湲�
	public List<UsersVO> getRentsUsersList();
	//�쉶�썝 �젙蹂� 遺덈윭�삤湲�
	UsersVO getRentsUsers(String user_id);
	//李⑤웾 由ъ뒪�듃 遺덈윭�삤湲�
	public List<CarsVO> getRentsCarsList();
	//�듅�젙 李⑤웾 �젙蹂대텋�윭�삤湲�
	public CarsVO getRentsCarsInfo(int car_no);
}
