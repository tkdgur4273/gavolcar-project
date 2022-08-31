package project.team.GaVolCar.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class CeventsBoardsVO {

	private int event_no;
	private String coupon_name;
	private String coupon_contents;
	private String member_id;
	private int b_no;
	
	List<BoardsVO> boardsList; 
}
