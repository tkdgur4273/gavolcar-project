package project.team.GaVolCar.mapper;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
class TransMapperTest {
	
	
	@Autowired
	private TransMapper transMapper;

	@Test
	void testTransMapper() {
		System.out.println(transMapper.getTransList());

		System.out.println(transMapper.getMonth().size());
		

		System.out.println(transMapper.getType().size());
						
	}

}
