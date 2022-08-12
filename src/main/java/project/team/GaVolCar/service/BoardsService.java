package project.team.GaVolCar.service;

import java.util.List;

import project.team.GaVolCar.vo.BoardsVO;

public interface BoardsService {
	
	public List<BoardsVO> getBoardsList();
	public List<BoardsVO> getBoardsCommentsList();
	
	public List<BoardsVO> getMainAlert();
	
	
}
