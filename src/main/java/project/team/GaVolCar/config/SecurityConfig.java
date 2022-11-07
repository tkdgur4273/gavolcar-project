package project.team.GaVolCar.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

import lombok.RequiredArgsConstructor;
import project.team.GaVolCar.oauth.PrincipalOAuth2UserService;
import project.team.GaVolCar.security.GavolcarUserDetailsService;

@RequiredArgsConstructor
@Configuration//설정 파일 클래스인것을 알려줌. @Configuration의 부모 : @Component
@EnableWebSecurity// 스프링 시큐리티 필터가 스프링 필터체인에 등록됨
public class SecurityConfig{

	//프로젝트 할때 CustomUserDetailsService 말고 프로젝트명UserDetailsService로 바꾸기.
	private final PrincipalOAuth2UserService principalOAuth2UserService;


	//우선 정적파일들은 시큐리티에 적용되지 않도록 아래와 같이 설정을 한다.
	// 이제 더이상 리소스파일들은 스프링 시큐리티에서 관리를 하지 않는다.   
	@Bean
	public WebSecurityCustomizer webSecurityCustomizer() {
		return (web) -> web.ignoring().antMatchers("/", "/callback","/resources/**","/css/**", "/fonts/**", "/images/**", "/js/**");
	}

	/*
	 * 스프링 시큐리티 규칙
	 */
	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		//우선 CSRF설정을 해제한다.
		//초기 개발시만 해주는게 좋다.
		http.csrf().disable();

		http.authorizeHttpRequests()
		.antMatchers("/user/**").hasAnyRole("USER","ADMIN")
		.antMatchers("/admin/**").hasAnyRole("ADMIN")
		.antMatchers("/member/**").hasAnyRole("MEMBER")
		.antMatchers("/**").permitAll()


		//스프링 시큐리티에서 제공하는 기본 로그인 폼을 사용하겠다.
		.and()
		.formLogin()
		.loginPage("/login")
		//         .usernameParameter("user_id")
		//         .passwordParameter("user_pw")
		.permitAll()

		.and()
		.oauth2Login()
		.loginPage("/login")
		.userInfoEndpoint()
		.userService(principalOAuth2UserService);
		/*
		 * oauth2Login
			- OAuth 2 로그인 기능에 대한 여러 설정의 진입점 입니다.
			userInfoEndpoint
			- Oauth 2 로그인 성공 이후 사용자 정보를 가져올 때의 설정들을 담당합니다.
			userService
			- 소셜 로그인 성공 시 후속 조치를 진행할 UserService 인터페이스의 구현체를 등록합니다.
			- 리소스 서버(즉, 소셜 서비스들)에서 사용자 정보를 가져온 상태에서 추가로 진행하고자 하는 기능을 명시할 수 있습니다.
		 */
		return http.build();
	}


	//해당 메서드의 리턴되는 오브젝트를 IoC로 등록해준다.
	@Bean
	public BCryptPasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}


}