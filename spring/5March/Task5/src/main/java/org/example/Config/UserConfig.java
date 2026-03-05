package org.example.Config;

import org.example.Services.UserServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = "org.example")
public class UserConfig{
    @Autowired
    public String ser(UserServices serv){
        return serv.services();

    }

    public String serv(){
        return "msg";
    }
}
