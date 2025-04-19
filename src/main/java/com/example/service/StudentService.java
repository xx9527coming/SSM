package com.example.service;

import com.example.entity.Student;
import java.util.List;

public interface StudentService {
    List<Student> getAllStudents();
    Student getStudentById(Integer stuNO);
    void addStudent(Student student);
    void updateStudent(Student student);
    void deleteStudent(Integer stuNO);
}