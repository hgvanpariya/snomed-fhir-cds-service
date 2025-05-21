package org.snomed.cdsservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.AutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@AutoConfiguration
public class CdsServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(CdsServiceApplication.class, args);
	}

}
