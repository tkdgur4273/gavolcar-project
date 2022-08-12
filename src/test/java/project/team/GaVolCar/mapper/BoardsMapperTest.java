package project.team.GaVolCar.mapper;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@SpringBootTest
class BoardsMapperTest {
	
	
	@Autowired
	private BoardsMapper boardsMapper;
	
	@Test
	void BoardsMappertest() {
		System.out.println(boardsMapper.getBoardsList());
		System.out.println(boardsMapper.getBoardsCommentsList());
		
		
		System.out.println(boardsMapper.getAlertListForMain());
	}

}
