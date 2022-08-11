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
	private String COUPON_CONTENTS;
	private String MEMBER_ID;
	private int B_NO;
	
	List<BoardsVO> boardsList; 
}
