package org.example;

import org.example.Services.UserServices;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;


@Configuration
@ComponentScan
public class Main {
    public static void main(String[] args) {
        AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext(Main.class);
            UserServices userser=context.getBean(UserServices.class);
            System.out.println(userser.generateWish());

            context.close();
//        System.out.println(context.getBean("Greeting"));
        }
    }