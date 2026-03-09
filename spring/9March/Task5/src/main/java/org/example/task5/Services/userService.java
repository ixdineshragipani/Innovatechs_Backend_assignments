package org.example.task5.Services;

import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service
public class userService {

    @Value("${app.name}")
    private String na;

    @PostConstruct
    public void userServices(){
        System.out.println(na);
    }
}
