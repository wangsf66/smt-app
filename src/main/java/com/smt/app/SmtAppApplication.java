package com.smt.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.context.annotation.ComponentScan;

import com.douglei.orm.spring.boot.starter.TransactionComponentScan;
import com.smt.app.util.MappingContextRegisterListener;

@EnableEurekaClient
@SpringBootApplication
@ComponentScan(basePackages= "com.smt")
@TransactionComponentScan(packages = "com.smt")
public class SmtAppApplication {
	public static void main(String[] args) {
		SpringApplication springApplication = new SpringApplication(SmtAppApplication.class);
		springApplication.addListeners(new MappingContextRegisterListener());
		springApplication.run(args);
	}
}
