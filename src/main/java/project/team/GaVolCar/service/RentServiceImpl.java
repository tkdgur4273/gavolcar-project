package project.team.GaVolCar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.mapper.RentsMapper;
import project.team.GaVolCar.vo.CarsVO;
import project.team.GaVolCar.vo.RentsVO;
import project.team.GaVolCar.vo.RentsVO2;
import project.team.GaVolCar.vo.UsersVO;

@Slf4j
@Service
public class RentServiceImpl implements RentService {

	@Autowired
	private RentsMapper rentsMapper;

	@Override
	public List<RentsVO2> getRentList2(String user_id) {
		log.info("getRentList()......");
		List<RentsVO2> rentVO2= rentsMapper.getRentsList2(user_id);
		for(RentsVO2 e: rentVO2) {
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
	public List<RentsVO2> getAllRentsList() {
		log.info("getAllRentsList()....");
		List<RentsVO2> rentVO2= rentsMapper.getAllRentsList();
		for(RentsVO2 e: rentVO2) {
			if(e.getHipass()==1) {
				e.setHipass2("O");
			}
			if(e.getBaby_car_seat()==1) {
				e.setBaby_car_seat2("O");
			}
		}


		return  rentVO2;
	}


	//�삁�빟由ъ뒪�듃 遺덈윭�삤湲�
	@Override
	public List<RentsVO> getRentsList(String user_id){
		log.info("getRentsList....");
		return rentsMapper.getRentsList(user_id);
	}

	//�쉶�썝�젙蹂� 遺덈윭�삤湲�
	@Override
	public UsersVO getRentsUsers(String user_id){
		log.info("getRentsUser....");
		return rentsMapper.getRentsUsers(user_id);
	}

	//�삁�빟 �젙蹂� 遺덈윭�삤湲�
	@Override
	public RentsVO getRentsInfo(int rez_no) {
		log.info("getRentsInfo....");
		return rentsMapper.getRentsInfo(rez_no);
	}

	//�삁�빟 �젙蹂� �궫�엯(異붽�)
	@Override
	public void insertRents(RentsVO rentsVO) {
		log.info("insertRents....");

		rentsMapper.insertRents(rentsVO);
	}

	//�삁�빟 �젙蹂� �닔�젙(�뾽�뜲�씠�듃)
	@Override
	public int updateRents(RentsVO rentsVO) {
		log.info("updateRents.....");
		return rentsMapper.updateRents(rentsVO);
	}

	//�삁�빟 �젙蹂� �궘�젣
	@Override
	public int deleteRents(RentsVO rentsVO) {
		log.info("deleteRents.....");
		return rentsMapper.deleteRents(rentsVO);
	}

	//李⑤웾 �젙蹂� 由ъ뒪�듃 遺덈윭�삤湲�
	@Override
	public List<CarsVO> getRentsCarsList(){
		log.info("getRentsCarsList....");
		return rentsMapper.getRentsCarsList();
	}

	//�쉶�썝 �젙蹂� 由ъ뒪�듃 遺덈윭�삤湲�
	@Override
	public List<UsersVO> getRentsUsersList(){
		log.info("getRentsUsersList....");
		return rentsMapper.getRentsUsersList();
	}

	//李⑤웾 �젙蹂대텋�윭�삤湲�
	@Override
	public CarsVO getRentsCarsInfo(int car_no){
		log.info("getRentsCarsList....");
		return rentsMapper.getRentsCarsInfo(car_no);
	}


}
