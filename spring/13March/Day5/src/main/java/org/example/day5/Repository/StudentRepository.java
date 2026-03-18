package org.example.day5.Repository;

import org.example.day5.Entity.Student;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface StudentRepository extends CrudRepository<Student, Integer> {
    List<Student> findAllById(Long id);

    Student getStudentByName(String name);

    List<Student> findByName(String name);

    List<Student> findByNameAndEmail(String name,String email);

    @Query("select s from Student s where s.age>22")
    List<Student> getStudentByAge();
}
