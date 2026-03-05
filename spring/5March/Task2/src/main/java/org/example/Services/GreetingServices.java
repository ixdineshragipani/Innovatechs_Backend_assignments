package org.example.Services;

import org.springframework.stereotype.Service;

@Service
public class GreetingServices {

    public String greet(){
        String msg="Namasthe, from the people of Bharat";
//        System.out.println(msg);
        return msg;
    }
}
