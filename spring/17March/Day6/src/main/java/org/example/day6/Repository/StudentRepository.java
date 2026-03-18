package org.example.day6.Repository;

import org.example.day6.Entity.StudentEntity;
import org.springframework.data.jpa.repository.JpaRepository;


public interface StudentRepository extends JpaRepository<StudentEntity, Long>{


}
