package project.team.GaVolCar.vo;

import java.util.List;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Builder
@Data
public class UsersVO {

	private String user_id;
	private String user_pw;
	private String user_name;
	private int user_phone_number;
	private int user_age;
	private String user_email;
	
	private String provider;
	private String providerId;
	
	// 해당 유저의 권한을 모은 리스트
	private List<AuthsVO> authList;
	// 해당 유저의 권한이랑 고유번호가 모인 리스트(사용안해도 무방)
	private List<UserAuthsVO> uaList;
	
	public UsersVO(String user_id, String user_pw, String user_name, int user_phone_number, int user_age,
			String user_email, String provider, String providerId, List<AuthsVO> authList, List<UserAuthsVO> uaList) {
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_phone_number = user_phone_number;
		this.user_age = user_age;
		this.user_email = user_email;
		this.provider = provider;
		this.providerId = providerId;
		this.authList = authList;
		this.uaList = uaList;
	}
	
	

}
