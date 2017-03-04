package net.study.podstogramm.configuration;

import java.io.IOException;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

@Configuration
@ComponentScan({ "net.study.podstogramm.service.impl", 
				 "net.study.podstogramm.controller",
				 "net.study.podstogramm.filter", 
				 "net.study.podstogramm.listener"})
public class ServiceConfig {
	
	@Bean
	public static PropertySourcesPlaceholderConfigurer placeHolderConfigurer() throws IOException {
		PropertySourcesPlaceholderConfigurer conf = new PropertySourcesPlaceholderConfigurer();
		conf.setLocations(getResources());
		return conf;
	}
	
	private static Resource[] getResources(){
		return new Resource[] {new ClassPathResource("application.properties")};
	}
}
