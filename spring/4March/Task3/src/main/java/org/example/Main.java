package org.example;


import org.example.AppConfig.AppConfig;
import org.example.Bean_A.Bean_A;
import org.example.Bean_B.Bean_B;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;


public class Main {
    public static void main(String[] args) {
        ApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);
//        System.out.println(context.getBean("AppConfig"));

        Bean_A beanA= context.getBean(Bean_A.class);
        beanA.Bean_App();

        Bean_B beanB=context.getBean(Bean_B.class);
        beanB.Bean_Bpp();

    }
}
