package project.team.GaVolCar.vo;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Builder
@Data
public class UsersVO2 {

	private String user_id;
	private String user_pw;
	private String user_name;
	private int user_phone_number;
	private int user_age;
	private String user_email;
	
	
	private String provider;
	private String providerId;
	
	private int user_no;
	private int auth_no;
	
	private String authorities;
	
	
	public UsersVO2(String user_id, String user_pw, String user_name, int user_phone_number, int user_age,
			String user_email, String provider, String providerId,int user_no,int auth_no,String authorities) {
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_phone_number = user_phone_number;
		this.user_age = user_age;
		this.user_email = user_email;
		this.provider = provider;
		this.providerId = providerId;
		this.user_no = user_no;
		this.auth_no = auth_no;
		this.authorities = authorities;
	}
	
	

}
