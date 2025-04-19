package com.example.exception;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.DataAccessException;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandler {

    private static final Logger logger = LoggerFactory.getLogger(GlobalExceptionHandler.class);

    @ExceptionHandler(Exception.class)
    public String handleException(Exception e, Model model) {
        logger.error("系统异常", e);
        model.addAttribute("msg", "系统繁忙，请稍后再试");
        return "error";
    }

    @ExceptionHandler(DataAccessException.class)
    public String handleDataAccessException(DataAccessException e, Model model) {
        logger.error("数据库操作异常", e);
        model.addAttribute("msg", "数据库操作失败");
        return "error";
    }
}