package project.team.GaVolCar.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import project.team.GaVolCar.vo.BoardsVO;

@Mapper
public interface BoardsMapper {
	public List<BoardsVO> getBoardsList();
	public List<BoardsVO> getBoardsCommentsList();
	
	//main용 공지사항 가져오기
	public List<BoardsVO> getAlertListForMain();
	

}
