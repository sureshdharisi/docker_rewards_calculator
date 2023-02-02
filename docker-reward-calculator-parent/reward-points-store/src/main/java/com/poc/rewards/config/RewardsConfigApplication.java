package com.poc.rewards.config;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
public class RewardsConfigApplication {

	public static void main(String[] args) {
		SpringApplication.run(RewardsConfigApplication.class, args);
	}

}
