package project.team.GaVolCar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.mapper.AdminUserMapper;
import project.team.GaVolCar.vo.UsersVO;

@Slf4j
@Service
public class AdminUserServiceImple implements AdminUserService{
	
	@Autowired
	private AdminUserMapper mapper;
	
	//전체 회원 목록 조회
	@Override
	public List<UsersVO> getList() {
		log.info("getList()..");
		return mapper.getList();
	}

	//회원 정보 상세 조회
	@Override
	public UsersVO readMember(String user_id) {
		log.info("read()..");
		return mapper.readMember(user_id);
	}

	@Override
	public int updateMember(UsersVO user) {
		log.info("updateMember()..");
		return mapper.updateMember(user);
	}

	@Override
	public int deleteMember(UsersVO user) {
		log.info("deleteMember()..");
		return mapper.deleteMember(user);
	}

	@Override
	public int insertMember(UsersVO user) {
		log.info("insertMember()..");
		return mapper.insertMember(user);
	}

	

	 
	
}
