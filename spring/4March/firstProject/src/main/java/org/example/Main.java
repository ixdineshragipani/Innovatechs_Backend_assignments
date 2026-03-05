package org.example;

import org.example.Repository.UserRepository;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan
public class Main {
    public static void main(String[] args) {
        var context=new AnnotationConfigApplicationContext(Main.class);

        System.out.println(context.getBean(UserRepository.class).Cars());
    }
}