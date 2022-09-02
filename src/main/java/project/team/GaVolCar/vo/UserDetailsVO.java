package project.team.GaVolCar.vo;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.oauth2.core.user.OAuth2User;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class UserDetailsVO implements UserDetails, OAuth2User {

	private static final long serialVersionUID = 1L;

	private UsersVO user;
	private UsersVO2 user2;
	 
	private Map<String, Object> attributes;// 구글 정보

	// 일반 시큐리티 로그인 사용
	public UserDetailsVO(UsersVO user) {
		System.out.println("프린시펄이 왜 생성되지 않지??");
		System.out.println(user);
		this.user = user;
		System.out.println("프린시펄을 생성하라!!!");
	}

	// 구글 로그인 사용
	public UserDetailsVO(UsersVO user3, Map<String, Object> attributes) {
		this.user = user3;
		this.attributes = attributes;
	}

	public UserDetailsVO(String password, String username, Collection<? extends GrantedAuthority> authorities,
			boolean accountNonExpired, boolean accountNonLocked, boolean credentialsNonExpired, boolean enabled) {
		if (((username == null) || "".equals(username))) {
			throw new IllegalArgumentException("Cannot pass null or empty values to constructor");
		}
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		for (AuthsVO auth : user.getAuthList()) {
			authorities.add(new SimpleGrantedAuthority(auth.getAuthorities()));
		}
		return authorities;
	}

	@Override
	public String getPassword() {
		return user.getUser_pw();
	}

	@Override
	public String getUsername() {
		
			return user.getUser_id();
		
	}

	//계정 만료 여부
	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	//계정 잠금 여부
	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

	//OAuth2User를 상속받아서 오버라이딩한 함수
	@Override
	public Map<String, Object> getAttributes() {
		return attributes;
	}

	@Override
	public String getName() {
		return user.getUser_name()+"";
	}
}
