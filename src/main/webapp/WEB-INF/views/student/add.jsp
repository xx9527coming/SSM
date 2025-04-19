<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>添加学生</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-4">
<div class="card">
    <div class="card-header">
        <h2>添加学生信息</h2>
    </div>
    <div class="card-body">
        <form action="${pageContext.request.contextPath}/student/add" method="post">
            <div class="mb-3">
                <label for="stuNO" class="form-label">学号</label>
                <input type="number" class="form-control" id="stuNO" name="stuNO" required>
            </div>
            <div class="mb-3">
                <label for="name" class="form-label">姓名</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="mb-3">
                <label for="sex" class="form-label">性别</label>
                <select class="form-select" id="sex" name="sex">
                    <option value="男">男</option>
                    <option value="女">女</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="nation" class="form-label">民族</label>
                <input type="text" class="form-control" id="nation" name="nation">
            </div>
            <div class="mb-3">
                <label for="telephone" class="form-label">电话</label>
                <input type="text" class="form-control" id="telephone" name="telephone">
            </div>
            <div class="mb-3">
                <label for="birthday" class="form-label">出生日期</label>
                <input type="date" class="form-control" id="birthday" name="birthday">
            </div>
            <div class="mb-3">
                <label for="address" class="form-label">地址</label>
                <input type="text" class="form-control" id="address" name="address">
            </div>
            <div class="mb-3">
                <label for="photo" class="form-label">照片</label>
                <input type="text" class="form-control" id="photo" name="photo">
            </div>
            <div class="mb-3">
                <label for="resume" class="form-label">个人简介</label>
                <textarea class="form-control" id="resume" name="resume" rows="3"></textarea>
            </div>
            <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                <button type="submit" class="btn btn-primary me-md-2">提交</button>
                <a href="${pageContext.request.contextPath}/student/list" class="btn btn-secondary">返回列表</a>
            </div>
        </form>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>