package in.cdac.project;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class BabyCareApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(BabyCareApplication.class, args);
		
		System.out.println("Setup is ready....!!!");
	}

}
