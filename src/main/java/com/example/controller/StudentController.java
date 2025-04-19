package com.example.controller;

import com.example.entity.Student;
import com.example.entity.User;
import com.example.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Autowired
    private StudentService studentService;

    @GetMapping("/list")
    public String list(Model model, HttpSession session) {
        User user = (User) session.getAttribute("user");
        if (user == null) {
            return "redirect:/user/login";
        }
        model.addAttribute("students", studentService.getAllStudents());
        model.addAttribute("username", user.getUsername());
        return "student/list";
    }

    @GetMapping("/add")
    public String addPage(HttpSession session) {
        if (session.getAttribute("user") == null) {
            return "redirect:/user/login";
        }
        return "student/add";
    }

    @PostMapping("/add")
    public String add(Student student, HttpSession session) {
        if (session.getAttribute("user") == null) {
            return "redirect:/user/login";
        }
        studentService.addStudent(student);
        return "redirect:/student/list";
    }

    @GetMapping("/edit/{stuNO}")
    public String editPage(@PathVariable Integer stuNO, Model model, HttpSession session) {
        if (session.getAttribute("user") == null) {
            return "redirect:/user/login";
        }
        model.addAttribute("student", studentService.getStudentById(stuNO));
        return "student/edit";
    }

    @PostMapping("/edit")
    public String edit(Student student, HttpSession session) {
        if (session.getAttribute("user") == null) {
            return "redirect:/user/login";
        }
        studentService.updateStudent(student);
        return "redirect:/student/list";
    }

    @GetMapping("/delete/{stuNO}")
    public String delete(@PathVariable Integer stuNO, HttpSession session) {
        if (session.getAttribute("user") == null) {
            return "redirect:/user/login";
        }
        studentService.deleteStudent(stuNO);
        return "redirect:/student/list";
    }
}