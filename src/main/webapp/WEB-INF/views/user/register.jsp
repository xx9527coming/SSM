<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>注册</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-5">
<div class="card" style="max-width: 500px; margin: 0 auto;">
  <div class="card-header">
    <h2 class="text-center">用户注册</h2>
  </div>
  <div class="card-body">
    <form action="${pageContext.request.contextPath}/user/register" method="post">
      <div class="mb-3">
        <label for="username" class="form-label">用户名</label>
        <input type="text" class="form-control" id="username" name="username" required>
      </div>
      <div class="mb-3">
        <label for="password" class="form-label">密码</label>
        <input type="password" class="form-control" id="password" name="password" required>
      </div>
      <div class="mb-3">
        <label for="tel" class="form-label">电话</label>
        <input type="text" class="form-control" id="tel" name="tel">
      </div>
      <div class="mb-3">
        <label for="email" class="form-label">邮箱</label>
        <input type="email" class="form-control" id="email" name="email">
      </div>
      <c:if test="${not empty msg}">
        <div class="alert alert-danger">${msg}</div>
      </c:if>
      <button type="submit" class="btn btn-primary w-100">注册</button>
    </form>
    <div class="mt-3 text-center">
      <a href="${pageContext.request.contextPath}/user/login">已有账号？去登录</a>
    </div>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>