<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>登录</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-5">
<div class="card" style="max-width: 500px; margin: 0 auto;">
  <div class="card-header">
    <h2 class="text-center">用户登录</h2>
  </div>
  <div class="card-body">
    <form action="${pageContext.request.contextPath}/user/login" method="post">
      <div class="mb-3">
        <label for="username" class="form-label">用户名</label>
        <input type="text" class="form-control" id="username" name="username" required>
      </div>
      <div class="mb-3">
        <label for="password" class="form-label">密码</label>
        <input type="password" class="form-control" id="password" name="password" required>
      </div>
      <c:if test="${not empty msg}">
        <div class="alert alert-danger">${msg}</div>
      </c:if>
      <button type="submit" class="btn btn-primary w-100">登录</button>
    </form>
    <div class="mt-3 text-center">
      <a href="${pageContext.request.contextPath}/user/register">注册新用户</a>
    </div>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>