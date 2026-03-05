package org.example.AppConfig;

import org.example.Services.GreetingServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = "org.example")
public class AppConfig {
    @Autowired
    public String GreetingServices(GreetingServices gre){
        String message=gre.greet();
//        System.out.println(message);
        return message;
    }

}
