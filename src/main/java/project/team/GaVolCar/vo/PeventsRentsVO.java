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
public class PeventsRentsVO {
	private int point_no;
	private int points;
	private String point_date;
	private int rez_no;
	
	
	List<RentsVO2> rentsList;
	
	
	
	
}
