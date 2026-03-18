package org.example.day5.Controller;


import org.example.day5.Entity.Student;
import org.example.day5.Repository.StudentRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@RestController
@RequestMapping("/students")
public class StudentController {

    private StudentRepository studentRepository;

    public StudentController (StudentRepository studentRepository){
        this.studentRepository=studentRepository;
    }

    @PostMapping("/postlist")
    public Student createStudent(@RequestBody Student student){
        return studentRepository.save(student);
    }

    @GetMapping("/list")
    public List<Student> getStudents(){
        return (List<Student>) studentRepository.findAll();
    }

    @GetMapping("getByName")

    public Student getStudentByName(@RequestParam String name){
        return studentRepository.getStudentByName(name);
    }

    @GetMapping("getStudentByName")
    public List<Student> getStudentByName2(@RequestParam String name){
        return studentRepository.findByName(name);
    }

    @GetMapping("/findbyId/{id}")
    public List<Student> getStudentById(@PathVariable Long id){
        return studentRepository.findAllById(id);
    }

    @DeleteMapping("/deleteById/{id}")
    public String delete(@PathVariable Long id){
        studentRepository.deleteById(Math.toIntExact(id));
        return "Id person deleted";
    }


}
