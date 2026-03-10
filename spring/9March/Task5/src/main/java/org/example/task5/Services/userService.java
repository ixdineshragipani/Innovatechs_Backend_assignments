package org.example.task5.Services;

import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Service;


@Service
public class userService implements CommandLineRunner {

    @Value("${app.name}")
    private String na;

    @Value("${app.welcome.message}")
    private String h;

    @Override
    public void run(String... args) throws Exception {
        System.out.println(h+na.toLowerCase());
        System.out.println(na);
    }
}
