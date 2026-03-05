package org.example.Config;

import org.example.Services.UserServices;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AppConfig {
    @Bean
    public UserServices ser(){
        return new UserServices();
    }
}
