package org.example.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;

@Service
public class UserServices {
    @Bean
    public String services(){
//        System.out.println("The services: Frontend, Backend, Devops");
        return "The services: Frontend, Backend, Devops";
}}
