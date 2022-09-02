package project.team.GaVolCar.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.mapper.UserAuthsMapper;
import project.team.GaVolCar.vo.UserDetailsVO;
import project.team.GaVolCar.vo.UsersVO;

@Slf4j
@Service
public class GavolcarUserDetailsService implements UserDetailsService {

	@Autowired
	private UserAuthsMapper userAuthsMapper;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		log.warn("Load User By UsersVO number : " + username);
		UsersVO vo = userAuthsMapper.getUser2(username);
		log.warn("queried By UsersVO mapper : " + vo);
		
		if (vo != null) {
			System.out.println("프린시펄생성");
			System.out.println("객체를 생성하자!!" + vo);
			return new UserDetailsVO(vo);

		} else {
			return null;
		}
	}

}
