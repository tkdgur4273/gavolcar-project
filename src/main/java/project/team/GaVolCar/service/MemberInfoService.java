package project.team.GaVolCar.service;

import project.team.GaVolCar.vo.UsersVO;

public interface MemberInfoService {
	
	UsersVO readMember(String user_id);//회원 정보 상세 조회
	public int updateMember(UsersVO user);//회원 정보 수정
	public int deleteMember(UsersVO user);//회원 정보 삭제
	
}
