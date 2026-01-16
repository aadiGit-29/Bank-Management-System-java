<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.bank.model.User, com.bank.model.Account" %>
<%
    User user = (User) session.getAttribute("user");
    Account acc = (Account) session.getAttribute("account");
    if (user == null || acc == null) { response.sendRedirect("login.jsp"); return; }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { font-family:Poppins, sans-serif; background: linear-gradient(135deg,#667eea,#764ba2); min-height:100vh; display:flex; align-items:center; justify-content:center; }
        .card { width:540px; padding:28px; border-radius:16px; background: #fff; color:#222; }
        .btn-action { border-radius:50px; padding:10px 18px; color:#fff; }
        .btn-dep { background:#27ae60; }
        .btn-wd { background:#e67e22; }
        .btn-logout { background:#e74c3c; }
    </style>
</head>
<body>
<div class="card text-center">
    <h1>Welcome, <%= user.getFullName() %></h1>
    <p>Account: <strong><%= acc.getAccountNo() %></strong></p>
    <p>Balance: <strong>₹ <%= String.format("%.2f", acc.getBalance()) %></strong></p>

    <% if (request.getParameter("msg") != null) { %>
        <div class="alert alert-success"><%= request.getParameter("msg") %></div>
    <% } %>

    <div class="d-flex justify-content-center gap-3 mt-3">
        <a href="deposit.jsp" class="btn btn-action btn-dep">Deposit</a>
        <a href="withdraw.jsp" class="btn btn-action btn-wd">Withdraw</a>
        <a href="logout" class="btn btn-action btn-logout">Logout</a>
    </div>
</div>
</body>
</html>
