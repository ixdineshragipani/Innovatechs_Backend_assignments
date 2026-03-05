package org.example.Services;

import org.springframework.context.annotation.Bean;
//import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Service
public class UserServices {
    public String Services(){
        String firstService="Frontend Developer";
        String secondService="Backend Developer";
        String thirdService="MERN stack developer";
        return ("Services: "+firstService+" "+secondService+" "+thirdService);
    }
}
