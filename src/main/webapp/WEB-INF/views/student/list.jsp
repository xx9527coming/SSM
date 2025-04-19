<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>学生列表</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-4">
<div class="card">
    <div class="card-header d-flex justify-content-between align-items-center">
        <h2>学生信息管理系统</h2>
        <div>
            <span class="me-3">当前用户: ${username}</span>
            <a href="${pageContext.request.contextPath}/user/logout" class="btn btn-sm btn-outline-danger">退出登录</a>
        </div>
    </div>
    <div class="card-body">
        <a href="${pageContext.request.contextPath}/student/add" class="btn btn-primary mb-3">添加学生</a>
        <table class="table table-striped table-hover">
            <thead class="table-dark">
            <tr>
                <th>学号</th>
                <th>姓名</th>
                <th>性别</th>
                <th>民族</th>
                <th>电话</th>
                <th>出生日期</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${students}" var="student">
                <tr>
                    <td>${student.stuNO}</td>
                    <td>${student.name}</td>
                    <td>${student.sex}</td>
                    <td>${student.nation}</td>
                    <td>${student.telephone}</td>
                    <td>${student.birthday}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/student/edit/${student.stuNO}" class="btn btn-sm btn-warning">编辑</a>
                        <a href="${pageContext.request.contextPath}/student/delete/${student.stuNO}"
                           class="btn btn-sm btn-danger" onclick="return confirm('确定要删除吗？')">删除</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>