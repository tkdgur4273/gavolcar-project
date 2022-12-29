package project.team.GaVolCar.vo;

import java.util.List;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@Builder
@Data
@ToString
public class RentsVO {
	private int rez_no;
	private String rent_start_date;
	private String rent_end_date;
	private String final_cost;
	private int hipass;
	private int baby_car_seat;
	private String user_id;
	private int car_no;

	//회원정보+렌트정보+차량정보
	private List<CarsVO> rentsInfo;
	//회원정보+렌트정보
	private List<UsersVO> rentsUser;
	//렌트 정보+차량정보
	private List<CarsVO> rentsCarList;

	public RentsVO(int rez_no,String rent_start_date, String rent_end_date, String final_cost, int hipass, int baby_car_seat, 
			String user_id, int car_no, List<CarsVO> rentsInfo, List<UsersVO> rentsUser, List<CarsVO> rentsCarList) {
		this.rez_no = rez_no;
		this.rent_start_date = rent_start_date;
		this.rent_end_date = rent_end_date;
		this.final_cost = final_cost;
		this.hipass = hipass;
		this.baby_car_seat = baby_car_seat;
		this.user_id = user_id;
		this.car_no = car_no;
		this.rentsInfo = rentsInfo;
		this.rentsUser = rentsUser;
		this.rentsCarList = rentsCarList;
	}
}
