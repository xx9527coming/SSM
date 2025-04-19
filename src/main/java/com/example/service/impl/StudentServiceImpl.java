package com.example.service.impl;

import com.example.dao.StudentDao;
import com.example.dao.UserDao;
import com.example.entity.Student;
import com.example.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentDao studentDao;

    @Autowired
    public void setStudentDao(StudentDao StudentDao) {
        this.studentDao = StudentDao;
    }

    @Override
    public List<Student> getAllStudents() {
        return studentDao.findAll();
    }

    @Override
    public Student getStudentById(Integer stuNO) {
        return studentDao.findById(stuNO);
    }

    @Override
    public void addStudent(Student student) {
        studentDao.save(student);
    }

    @Override
    public void updateStudent(Student student) {
        studentDao.update(student);
    }

    @Override
    public void deleteStudent(Integer stuNO) {
        studentDao.delete(stuNO);
    }
}