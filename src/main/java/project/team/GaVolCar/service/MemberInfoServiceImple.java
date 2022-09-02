package project.team.GaVolCar.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.mapper.MemberInfoMapper;
import project.team.GaVolCar.vo.UsersVO;

@Slf4j
@Service
public class MemberInfoServiceImple implements MemberInfoService{
	
	@Autowired
	private MemberInfoMapper mapper;
	
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
	
}
