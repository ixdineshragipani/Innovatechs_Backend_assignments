package org.example.Bean_A;

import org.example.Bean_B.Bean_B;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Bean_A {

    public void Bean_App(){
        System.out.println("This is Bean A constructor");
    }

    private Bean_B beanB;
    @Autowired
    public void setBeanB(Bean_B beanB) {
        System.out.println("this is Bean B setter method");
        this.beanB = beanB;
    }

}
