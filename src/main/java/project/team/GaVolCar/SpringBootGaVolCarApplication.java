package project.team.GaVolCar;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan(value = {"project.team.GaVolCar.mapper"})
@SpringBootApplication
public class SpringBootGaVolCarApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootGaVolCarApplication.class, args);
	}

}
