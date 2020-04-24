package per.aclic.managesys;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.Banner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = "per.aclic.managesys.dao")
public class HotelApplication {

    public static void main(String[] args) {
        SpringApplication springApplication =
                new SpringApplication(HotelApplication.class);
        springApplication.setBannerMode(Banner.Mode.OFF);
        SpringApplication.run(HotelApplication.class, args);
    }

}
