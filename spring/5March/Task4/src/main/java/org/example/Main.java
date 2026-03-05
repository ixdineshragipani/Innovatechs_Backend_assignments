
//Task 4 — Retrieve a Bean from the ApplicationContext
//Start the Spring container manually using:AnnotationConfigApplicationContext
//Pass your configuration class to it
//        Retrieve a bean using:
//        context.getBean(...)
//Call a method on the bean and print the output.


package org.example;

import org.example.Config.AppConfig;
import org.example.Services.UserServices;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Main {
    public static void main(String[] args) {
        AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext(AppConfig.class);
        UserServices msg=context.getBean(UserServices.class);
        System.out.println(msg.servies());
    }
}