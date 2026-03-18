package org.example.day6.DTO;


import lombok.Getter;

import java.util.List;

@Getter
public class StudentResponseDTO {

//    private Long id;
    private String name;
    private int age;
    private String email;

    public StudentResponseDTO( String name, int age,String email){
        this.name = name;
        this.age = age;
        this.email=email;
    }

//    public String findAll() {
//        String s="Name: "+name+" Age: "+age+" Email: "+email;
//        return s;
//    }
}
