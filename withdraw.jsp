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
    <title>Withdraw</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap');

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #141E30, #243B55);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
            color: #fff;
        }

        /* glowing background orbs */
        .bg-ball {
            position: absolute;
            width: 350px;
            height: 350px;
            border-radius: 50%;
            filter: blur(120px);
            opacity: 0.55;
            animation: float 6s infinite ease-in-out;
        }
        .ball1 { background: #ff8a8a; top: -70px; left: -50px; }
        .ball2 { background: #ff4e50; bottom: -70px; right: -40px; animation-delay: 1.4s; }

        @keyframes float {
            0% { transform: translateY(0); }
            50% { transform: translateY(-35px); }
            100% { transform: translateY(0); }
        }

        .glass-box {
            width: 420px;
            padding: 36px;
            border-radius: 20px;
            background: rgba(255,255,255,0.10);
            backdrop-filter: blur(14px);
            border: 1px solid rgba(255,255,255,0.15);
            box-shadow: 0 0 35px rgba(0,0,0,0.45);
            animation: fadeIn 1.2s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(25px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .glass-box h2 {
            font-weight: 700;
            margin-bottom: 20px;
        }

        input.form-control {
            background: rgba(255,255,255,0.15);
            border: none;
            border-radius: 12px;
            color: #fff;
            padding: 12px 14px;
        }

        input::placeholder {
            color: rgba(255,255,255,0.75);
        }

        .btn-withdraw {
            background: linear-gradient(45deg, #ff4e50, #f9d423);
            border: none;
            width: 100%;
            padding: 12px;
            font-size: 18px;
            font-weight: 700;
            border-radius: 14px;
            transition: 0.3s;
            color: #000;
        }

        .btn-withdraw:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 18px rgba(255,80,80,0.35);
        }

        .back {
            margin-top: 15px;
            text-align: center;
        }
        .back a {
            color: #fff;
            text-decoration: underline;
            opacity: 0.85;
        }
        .back a:hover {
            opacity: 1;
        }
    </style>
</head>

<body>

<div class="bg-ball ball1"></div>
<div class="bg-ball ball2"></div>

<div class="glass-box">

    <h2>Withdraw Money</h2>

    <% if (request.getParameter("error") != null) { %>
        <div class="alert alert-danger">Invalid amount or insufficient funds</div>
    <% } %>

    <form action="withdraw" method="post">
        <div class="mb-3">
            <input class="form-control" name="amount"
                   placeholder="Amount e.g. 500.00"
                   required
                   pattern="[0-9]+(\\.[0-9]{1,2})?">
        </div>

        <button class="btn-withdraw">Withdraw</button>
    </form>

    <div class="back">
        <a href="dashboard.jsp">← Back to Dashboard</a>
    </div>

</div>

</body>
</html>
