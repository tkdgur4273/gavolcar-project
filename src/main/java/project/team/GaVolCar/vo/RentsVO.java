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
public class RentsVO {
	private int rez_no;
	private String rent_start_date;
	private String rent_end_date;
	private String final_cost;
	
	private int hipass;
	private int baby_car_seat;
	private String user_id;
	private int	car_no;
}
