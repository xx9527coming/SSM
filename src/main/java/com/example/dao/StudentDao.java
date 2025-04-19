package com.example.dao;

import com.example.entity.Student;
import java.util.List;

public interface StudentDao {
    List<Student> findAll();
    Student findById(Integer stuNO);
    void save(Student student);
    void update(Student student);
    void delete(Integer stuNO);
}