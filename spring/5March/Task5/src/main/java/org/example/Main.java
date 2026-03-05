//Task 5 — Reflection Exercise
//Write a short comparison between With Spring vs Without Spring.
//Without Spring:
//Objects created manually using new
//Dependencies wired manually in main()
//Tight coupling between classes
//With Spring:
//Spring container manages object creation
//Dependencies injected automatically
//Reduced coupling and easier scalability


package org.example;

import org.example.Config.UserConfig;
import org.example.Services.UserServices;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;


public class Main {
    public int serv(){
        System.out.println("The services are Frontend Dev, Backend Dev, MobileApp development");
        return 0;
    }
    public static void main(String[] args) {
        AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext(UserConfig.class);
//        UserServices msg= context.getBean(UserServices.class);
//        System.out.println(msg.services());
        UserServices msg=context.getBean(UserServices.class);
        System.out.println(msg.services());
        Main s=new Main();
        System.out.println(s.serv());

    }
}