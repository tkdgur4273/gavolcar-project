package project.team.GaVolCar.mapper;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@SpringBootTest
class BoardMapperTest {
	
	@Autowired
	BoardMapper boardMapper;
	
	@Test
	void boardsMapperTest() {
		System.out.println(boardMapper.alertAdminTotalCount());
		System.out.println(boardMapper.alertUserTotalCount());
		System.out.println(boardMapper.qnaAdminTotalCount());
		System.out.println(boardMapper.qnaUserTotalCount());
		System.out.println(boardMapper.reviewaAdminTotalCount());
		System.out.println(boardMapper.reviewUserTotalCount());
		
		
	}

}
