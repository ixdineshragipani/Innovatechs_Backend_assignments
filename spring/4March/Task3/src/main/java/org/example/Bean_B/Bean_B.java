package org.example.Bean_B;

import org.example.Bean_A.Bean_A;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Bean_B {


    public void Bean_Bpp(){
        System.out.println("This is the Bean B constructor");
    }
    private Bean_A beanA;


    @Autowired
    public void setBeanA(Bean_A beanA) {
        System.out.println("This is Bean A setter method");
        this.beanA = beanA;
    }




}
