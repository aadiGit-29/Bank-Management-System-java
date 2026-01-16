<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Login - Bank Management</title>

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
            color: #fff;
            overflow: hidden;
        }

        /* glowing gradient balls */
        .bg-ball {
            position: absolute;
            width: 350px;
            height: 350px;
            border-radius: 50%;
            filter: blur(120px);
            opacity: 0.55;
            animation: float 6s ease-in-out infinite;
        }

        .ball1 { background: #667eea; top: -70px; left: -60px; }
        .ball2 { background: #764ba2; bottom: -70px; right: -40px; animation-delay: 1.3s; }

        @keyframes float {
            0% { transform: translateY(0px); }
            50% { transform: translateY(-35px); }
            100% { transform: translateY(0px); }
        }

        .card {
            width: 430px;
            padding: 40px;
            border-radius: 20px;
            background: rgba(255, 255, 255, 0.08);
            backdrop-filter: blur(12px);
            border: 1px solid rgba(255, 255, 255, 0.12);
            box-shadow: 0 0 35px rgba(0,0,0,0.4);
            animation: fadeIn 1.2s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(25px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .card h2 {
            font-weight: 700;
            font-size: 32px;
            text-align: center;
        }

        input.form-control {
            background: rgba(255,255,255,0.14);
            border: none;
            border-radius: 12px;
            color: #fff;
            padding: 12px 14px;
        }

        input.form-control::placeholder {
            color: rgba(255,255,255,0.7);
        }

        .btn-login {
            background: linear-gradient(45deg, #42e695, #3bb2b8);
            border: none;
            color: #000;
            font-weight: 700;
            padding: 12px;
            border-radius: 14px;
            font-size: 18px;
            transition: 0.3s;
        }

        .btn-login:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 18px rgba(66,230,149,0.35);
        }

        a.link {
            color: #fff;
            opacity: 0.8;
            transition: 0.2s;
        }

        a.link:hover {
            opacity: 1;
            text-decoration: underline;
        }

    </style>
</head>

<body>

<div class="bg-ball ball1"></div>
<div class="bg-ball ball2"></div>

<div class="card">

    <h2>Welcome Back</h2>

    <% if (request.getParameter("success") != null) { %>
        <div class="alert alert-success mt-3">Registration successful. Please login.</div>
    <% } %>

    <form action="login" method="post" class="mt-4">
        <div class="mb-3">
            <input class="form-control" name="email" placeholder="Email" required>
        </div>
        <div class="mb-3">
            <input class="form-control" name="password" type="password" placeholder="Password" required>
        </div>
        <button class="btn btn-login w-100 mt-2">Login</button>
    </form>

    <% if (request.getParameter("error") != null) { %>
        <div class="alert alert-danger mt-3">Invalid credentials</div>
    <% } %>

    <div class="text-center mt-3">
        <a href="register.jsp" class="link">Create a new account</a>
    </div>

</div>

</body>
</html>
