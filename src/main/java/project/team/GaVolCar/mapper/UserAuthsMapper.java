package project.team.GaVolCar.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import project.team.GaVolCar.vo.UserAuthsVO;
import project.team.GaVolCar.vo.UsersVO;
import project.team.GaVolCar.vo.UsersVO2;

@Mapper
public interface UserAuthsMapper {

	UserAuthsVO getUser(String username);
	UsersVO getUser2(String username);
	UsersVO2 getUser3(String username);

	@Insert("insert into users(user_id,user_pw,user_name,user_phone_number,user_age,user_emaill) "
			+ "values(#{user_id},#{user_pw},#{user_name},#{user_phone_number},#{user_age},#{user_email})")
	public int insertUser(UsersVO userVO);

	@Insert("insert into userauths (user_no, user_id, auth_no) values(user_seq.nextval, #{user_id}, 10)")
	public void insertUserAuths(UserAuthsVO auth);

	@Select("select * from userauths where user_id = #{user_id}")
	public UserAuthsVO findAuth(String user_id);
	
	 @Insert("insert into users(user_id, user_email) values(#{user_id},#{user_email})")
	public void socialSave(UsersVO user);

}