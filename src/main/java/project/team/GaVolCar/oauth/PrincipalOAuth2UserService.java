package project.team.GaVolCar.oauth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;
import project.team.GaVolCar.mapper.UserAuthsMapper;
import project.team.GaVolCar.vo.UserAuthsVO;
import project.team.GaVolCar.vo.UserDetailsVO;
import project.team.GaVolCar.vo.UsersVO;

@Service
public class PrincipalOAuth2UserService extends DefaultOAuth2UserService {

	@Autowired
	private UserAuthsMapper mapper;

	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {

		// code를 통해 구성한 정보
		System.out.println("getClientRegistration :" + userRequest.getClientRegistration());
		System.out.println("getAccessToken :" + userRequest.getAccessToken());

		OAuth2User oAuth2User = super.loadUser(userRequest);// google회원 프로필 조회
		System.out.println("getAttributes :" + oAuth2User.getAttributes());

		return processOAuth2User(userRequest, oAuth2User);
	}

	private OAuth2User processOAuth2User(OAuth2UserRequest userRequest, OAuth2User oAuth2User) {

		OAuth2UserInfo oAuth2UserInfo = null;
		if (userRequest.getClientRegistration().getRegistrationId().equals("google")) {
			System.out.println("구글 로그인 요청");
			oAuth2UserInfo = new GoogleUserInfo(oAuth2User.getAttributes());
			System.out.println("이메일 타기" + oAuth2UserInfo.getEmail());
		} else {
			System.out.println("구글만 지원");
		}

		String email = oAuth2UserInfo.getEmail();
		String user_id = oAuth2UserInfo.getProvider() + "_" + email;

		// 회원 여부, 구글 아이디 검색=====================================
		UsersVO user = mapper.getUser2(user_id);
		UserAuthsVO auth = mapper.getUser(user_id);

		System.out.println("객체 찾기");
		if (user == null) {

			user = UsersVO.builder().user_id(user_id).user_email(email).build();
			auth = UserAuthsVO.builder().user_id(user_id).build();
			System.out.println("<소셜 회원가입>");

			mapper.socialSave(user);
			System.out.println(user_id);
			System.out.println(auth);
			mapper.insertUserAuths(auth);

			System.out.println("<소셜 객체 생성>");
			System.out.println("회원가입 정보: " + auth);
			System.out.println(oAuth2User.getAttributes());
			UsersVO user2 = mapper.getUser2(user_id);
			return new UserDetailsVO(user2, oAuth2User.getAttributes());

		} else {
			// user의 패스워드가 null이기 때문에 OAuth 유저는 일반적인 로그인을 할 수 없음.
			System.out.println("<소셜 로그인>");
			System.out.println("회원가입 정보: " + auth);
			System.out.println(user);
			return new UserDetailsVO(user, oAuth2User.getAttributes());

		}

	}

}
