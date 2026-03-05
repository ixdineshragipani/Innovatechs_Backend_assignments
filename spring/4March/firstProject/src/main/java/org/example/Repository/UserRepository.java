package org.example.Repository;


import org.example.Services.UserServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UserRepository {

    @Autowired
    private UserServices userServices;

    public UserRepository(UserServices userServices) {
        this.userServices=userServices;
    }
    public String Cars(){
        String name="Dinesh";
        int age=23;
        String car="Supra";
        return ("name: "+name+" "+"age: "+age+" "+"Car: "+car+"\n"+userServices.Services());
    }

}
