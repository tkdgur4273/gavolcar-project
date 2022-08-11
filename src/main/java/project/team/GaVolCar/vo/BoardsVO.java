package project.team.GaVolCar.vo;

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
public class BoardsVO {

	private int b_no;
	private String b_title;
	private String b_contents;
	private String b_date;
	private String b_answer;
	private String member_id;
	private String car_type;
	private int b_hit;
	private String b_img;
	private String user_id;
	private int b_code;
	
	
}
