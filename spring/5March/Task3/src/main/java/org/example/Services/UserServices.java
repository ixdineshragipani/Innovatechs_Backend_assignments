//Task 3 — Define a Bean Manually using @Configuration
//Create a class annotated with @Configuration
//Inside it, create a method annotated with @Bean that returns an object
//Example use cases:
//Custom initialization logic
//Registering third-party library classes


package org.example.Services;


public class UserServices {
    public void services(){
        System.out.println("This is services of user");
    }
    public void noteService(){
        System.out.println("This is the note service");
    }
}
