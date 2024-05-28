package com.project.web.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.web.Model.Student;

public interface StudentInfo extends JpaRepository<Student, Integer> {

}
