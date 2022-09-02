package project.team.GaVolCar.service;

import java.util.List;
import project.team.GaVolCar.vo.UsersVO;

public interface AdminUserService {
	
	List<UsersVO> getList();//전체 회원 목록 조회
	UsersVO readMember(String user_id);//회원 정보 상세 조회
	public int updateMember(UsersVO usersVO);//회원 정보 수정
	int deleteMember(UsersVO user);//회원 정보 삭제
	int insertMember(UsersVO usersVO);
	
	
}
