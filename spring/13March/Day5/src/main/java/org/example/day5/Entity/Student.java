package org.example.day5.Entity;

import jakarta.persistence.*;
import org.springframework.data.jpa.repository.Query;

@Entity
public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String name;

    @Column
    private int age;

    @Column(unique = true)
    private String email;

    public String getEmail() {
        return email;
    }
    public String getName() {
        return name;
    }
    public int getAge() {return age;}
    public Long getId() {
        return id;
    }

    public Student(Long id,String name,int age,String email){
        this.id=id;
        this.name=name;
        this.email=email;
        this.age=age;
    }

    public Student(){

    }


    public void setEmail(String email) {
        this.email = email;
    }
    public void setName(String name) {
        this.name = name;
    }
    public void setAge(int age) {
        this.age = age;
    }
    public void setId(Long id) {
        this.id = id;
    }


}
