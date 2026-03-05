//Task 3 — Define a Bean Manually using @Configuration
//Create a class annotated with @Configuration
//Inside it, create a method annotated with @Bean that returns an object
//Example use cases:
//Custom initialization logic
//Registering third-party library classes


package org.example;

import org.example.Config.AppConfig;
import org.example.Services.UserServices;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.Configuration;


@Configuration
public class Main {
    public static void main(String[] args) {
        ApplicationContext context=new AnnotationConfigApplicationContext(AppConfig.class);
        UserServices us= context.getBean(UserServices.class);
        us.services();
        us.noteService();

    }
}