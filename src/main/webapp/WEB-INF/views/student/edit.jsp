<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>编辑学生</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-4">
<div class="card">
    <div class="card-header">
        <h2>编辑学生信息</h2>
    </div>
    <div class="card-body">
        <form action="${pageContext.request.contextPath}/student/edit" method="post">
            <input type="hidden" name="stuNO" value="${student.stuNO}">
            <div class="mb-3">
                <label class="form-label">学号</label>
                <input type="text" class="form-control" value="${student.stuNO}" disabled>
            </div>
            <div class="mb-3">
                <label for="name" class="form-label">姓名</label>
                <input type="text" class="form-control" id="name" name="name" value="${student.name}" required>
            </div>
            <div class="mb-3">
                <label for="sex" class="form-label">性别</label>
                <select class="form-select" id="sex" name="sex">
                    <option value="男" ${student.sex == '男' ? 'selected' : ''}>男</option>
                    <option value="女" ${student.sex == '女' ? 'selected' : ''}>女</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="nation" class="form-label">民族</label>
                <input type="text" class="form-control" id="nation" name="nation" value="${student.nation}">
            </div>
            <div class="mb-3">
                <label for="telephone" class="form-label">电话</label>
                <input type="text" class="form-control" id="telephone" name="telephone" value="${student.telephone}">
            </div>
            <div class="mb-3">
                <label for="birthday" class="form-label">出生日期</label>
                <input type="date" class="form-control" id="birthday" name="birthday"
                       value="<fmt:formatDate value='${student.birthday}' pattern='yyyy-MM-dd'/>">
            </div>
            <div class="mb-3">
                <label for="address" class="form-label">地址</label>
                <input type="text" class="form-control" id="address" name="address" value="${student.address}">
            </div>
            <div class="mb-3">
                <label for="photo" class="form-label">照片</label>
                <input type="text" class="form-control" id="photo" name="photo" value="${student.photo}">
            </div>
            <div class="mb-3">
                <label for="resume" class="form-label">个人简介</label>
                <textarea class="form-control" id="resume" name="resume" rows="3">${student.resume}</textarea>
            </div>
            <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                <button type="submit" class="btn btn-primary me-md-2">保存</button>
                <a href="${pageContext.request.contextPath}/student/list" class="btn btn-secondary">返回列表</a>
            </div>
        </form>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>