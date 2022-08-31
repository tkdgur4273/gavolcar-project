package project.team.GaVolCar.mapper;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
class EventMapperTest {
	
	@Autowired
	private EventMapper eventMapper;
	
	
	@Test
	void testPeventsRentsJoin() {
		
		
		System.out.println(eventMapper);
		System.out.println(eventMapper.getPeventsRentsList().size());
		System.out.println(eventMapper.getPointData("dong"));
		
		
		
		
		System.out.println(eventMapper.getCeventsList());
		System.out.println(eventMapper.getCeventBoardList());
		System.out.println(eventMapper.forB_no());
		
	}

}
