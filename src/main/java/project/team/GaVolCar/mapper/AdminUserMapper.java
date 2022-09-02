package project.team.GaVolCar.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import project.team.GaVolCar.vo.UsersVO;

@Mapper
public interface AdminUserMapper {
	
	public List<UsersVO> getList();//전체 회원 목록
	UsersVO readMember(String user_id);//회원 정보 상세 조회
	public int updateMember(UsersVO user);//회원정보수정
	public int deleteMember(UsersVO user);//회원삭제
	public int insertMember(UsersVO user);//회원가입
	
	
	
}
