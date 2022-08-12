package project.team.GaVolCar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.mapper.BoardsMapper;
import project.team.GaVolCar.vo.BoardsVO;

@Slf4j
@Service
public class BoardsServiceImpl implements BoardsService{
	
	@Autowired
	private BoardsMapper boardsMapper;

	@Override
	public List<BoardsVO> getBoardsList() {
		log.info("boardlist()....");
		return boardsMapper.getBoardsList();
	}

	@Override
	public List<BoardsVO> getBoardsCommentsList() {
		log.info("boardCommentslist()....");
		return boardsMapper.getBoardsCommentsList();
	}
	
	//main에서 쓸 함수
	@Override
	public List<BoardsVO> getMainAlert() {
		log.info("getMainAlert()....");
		return boardsMapper.getAlertListForMain();
	}

	
	
	
	
	

	
}
