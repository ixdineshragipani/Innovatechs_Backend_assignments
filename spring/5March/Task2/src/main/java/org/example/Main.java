//Task 2 — Build and Inject a GreetingService
//Create a GreetingService class with a greet() method Annotate it with @Service
//Create another class that uses @Autowired to inject GreetingService
//Important: Do not create objects using new GreetingService().
//Let Spring handle object creation and dependency wiring.


package org.example;

import org.example.AppConfig.AppConfig;
import org.example.Services.GreetingServices;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Main {
    public static void main(String[] args) {
        ApplicationContext context=new AnnotationConfigApplicationContext(AppConfig.class);
        GreetingServices g= context.getBean(GreetingServices.class);
        System.out.println(g.greet());

//        g.greet();
    }
}