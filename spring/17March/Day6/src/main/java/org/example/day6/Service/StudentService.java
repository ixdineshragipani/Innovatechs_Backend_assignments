package org.example.day6.Service;

import org.example.day6.DTO.*;
import org.example.day6.Repository.StudentRepository;
import org.example.day6.Entity.StudentEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class StudentService {

    @Autowired
    private final StudentRepository studentRepository;

    public StudentResponseDTO studentResponseDTO;

    public StudentRequestDTO studentRequestDTO;


    public StudentService(StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }

    public StudentResponseDTO updateStudent(StudentRequestDTO dto) {
        StudentEntity student=mapToEntity(dto);
        StudentEntity saved=studentRepository.save(student);
        return mapToResponseDTO(saved);
    }


    @Transactional
    public StudentResponseDTO createStudent(StudentRequestDTO dto){
        StudentEntity student=mapToEntity(dto);
        StudentEntity saved = studentRepository.save(student);
         studentRepository.save(student);
        studentRepository.save(student);
        throw new RuntimeException("runtime");

//        return mapToResponseDTO(saved);
    }

    //Mapping DTOs for response.
    private StudentResponseDTO mapToResponseDTO(StudentEntity studentEntity) {
        return new StudentResponseDTO(studentEntity.getName(), studentEntity.getAge(), studentEntity.getEmail()
        );
    }
    //for inserting into entity.
    private StudentEntity mapToEntity(StudentRequestDTO dto) {
        StudentEntity student = new StudentEntity();
        student.setName(dto.getName());
        student.setEmail(dto.getEmail());
        student.setAge(dto.getAge());
        student.setAadhaar_number(dto.getAadhar_number());
        return student;
    }

    //Get all students
    public List<StudentResponseDTO> getAllStudents(){
        List<StudentEntity> students= studentRepository.findAll();
        return students.stream().map(student->new StudentResponseDTO(student.getName(),student.getAge(),student.getEmail())).toList();
    }


    //Get by ID
    public Optional<StudentEntity> getStudentById(Long id){
        return studentRepository.findById(id);
    }


    //update
//    @Transactional
//    public List<StudentEntity> updateStudent(Long id){return studentRepository.save();}

    @Transactional
    public String deleteById(Long id){
        studentRepository.deleteById(id);
        return STR."The Id= \{id} is deleted";
    }

}
