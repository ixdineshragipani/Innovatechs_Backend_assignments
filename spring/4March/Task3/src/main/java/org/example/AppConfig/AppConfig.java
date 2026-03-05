package org.example.AppConfig;


import org.example.Bean_A.Bean_A;
import org.example.Bean_B.Bean_B;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan
public class AppConfig {
    @Bean
    public Bean_A beanA() {
        return new Bean_A();
    }

    @Bean
    public Bean_B beanB() {
        return new Bean_B();
    }
}
