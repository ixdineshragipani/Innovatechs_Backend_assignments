package org.example.Services;
import jakarta.annotation.PreDestroy;
import jakarta.annotation.PostConstruct;

import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

@Component
public class UserServices {

    static{
        System.out.println("Static Block");
    }
    {
        System.out.println("Non static java init block");
    }

    @Bean
    public String Greeting(){
        System.out.println("Greeting bean created--->Constructor");
        return "0";
    }
    @PostConstruct
    public void init(){
        System.out.println("Bean init method");
    }

    @Bean
    public String generateWish(){
        return "Good night";
    }

    @PreDestroy
    public void Destroy(){
        System.out.println("Bean is destroyed");
    }
}
