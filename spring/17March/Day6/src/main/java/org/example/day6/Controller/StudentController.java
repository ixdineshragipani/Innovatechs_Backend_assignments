package org.example.day6.Controller;


import org.example.day6.Service.StudentService;
import org.example.day6.DTO.*;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/students")
public class StudentController {
    private final StudentService studentService;

    public StudentController(StudentService studentService) {
        this.studentService = studentService;
    }

    //Create
    @PostMapping
    public StudentResponseDTO create(@RequestBody StudentRequestDTO dto){
        return studentService.createStudent(dto);
    }


    //update
//    @PutMapping("/{id}")
//    public StudentRequestDTO updateStudent(@RequestBody StudentRequestDTO dto){return studentService.updateStudent(dto);}

    //patching
//    @PatchMapping("{id}")
//    public StudentResponseDTO updateById(@RequestBody StudentRequestDTO dto){return StudentService.updateStudent(dto);}

    //Read all
    @GetMapping("/list")
    public List<StudentResponseDTO> getAll(){
       return studentService.getAllStudents();
    }

    @DeleteMapping("/{id}")
    public String deleteStudentById(@PathVariable Long id){
        return studentService.deleteById(id);
    }
}
