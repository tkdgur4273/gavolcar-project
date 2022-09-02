package project.team.GaVolCar.mapper;

import org.apache.ibatis.annotations.Mapper;
import project.team.GaVolCar.vo.UsersVO;

@Mapper
public interface MemberInfoMapper {
	
	UsersVO readMember(String user_id);//회원 정보 상세 조회
	public int updateMember(UsersVO user);//회원정보수정
	public int deleteMember(UsersVO user);//회원삭제
	
}
