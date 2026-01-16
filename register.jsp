<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Register - Bank Management</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #141E30, #243B55);
            color: #fff;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }

        /* animated background balls */
        .bg-ball {
            position: absolute;
            width: 380px;
            height: 380px;
            border-radius: 50%;
            filter: blur(120px);
            opacity: 0.55;
            animation: float 6s infinite ease-in-out;
        }
        .ball1 { background: #667eea; top: -70px; left: -60px; }
        .ball2 { background: #764ba2; bottom: -70px; right: -50px; animation-delay: 1.4s; }

        @keyframes float {
            0% { transform: translateY(0); }
            50% { transform: translateY(-40px); }
            100% { transform: translateY(0); }
        }

        .card {
            width: 520px;
            padding: 40px;
            border-radius: 20px;
            background: rgba(255,255,255,0.08);
            backdrop-filter: blur(12px);
            border: 1px solid rgba(255,255,255,0.12);
            box-shadow: 0 0 35px rgba(0,0,0,0.4);
            animation: fadeIn 1.2s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(25px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .card h2 {
            font-weight: 700;
            text-align: center;
            margin-bottom: 25px;
        }

        input.form-control {
            background: rgba(255,255,255,0.14);
            border: none;
            border-radius: 12px;
            padding: 12px 15px;
            color: #fff;
        }

        input::placeholder {
            color: rgba(255,255,255,0.7);
        }

        .btn-register {
            width: 100%;
            background: linear-gradient(45deg, #ff758c, #ff7eb3);
            border: none;
            border-radius: 14px;
            font-size: 18px;
            font-weight: 700;
            padding: 12px;
            color: #fff;
            transition: 0.3s;
        }

        .btn-register:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 18px rgba(255,120,150,0.4);
        }

        .msg {
            margin-top: 12px;
            padding: 12px;
            border-radius: 10px;
            text-align: center;
        }

        .error {
            background: rgba(255, 0, 0, 0.18);
            color: #ffb3b3;
        }

        a.back-link {
            color: #fff;
            opacity: 0.85;
            text-decoration: underline;
        }

        a.back-link:hover {
            opacity: 1;
        }
    </style>
</head>

<body>

<div class="bg-ball ball1"></div>
<div class="bg-ball ball2"></div>

<div class="card">
    <h2>Create Your Account</h2>

    <form action="register" method="post">
        
        <div class="mb-3">
            <input class="form-control" name="fullName" placeholder="Full Name" required>
        </div>

        <div class="mb-3">
            <input class="form-control" type="email" name="email" placeholder="Email Address" required>
        </div>

        <div class="mb-3">
            <input class="form-control" name="phone" placeholder="Phone (optional)">
        </div>

        <div class="mb-3">
            <input class="form-control" type="password" name="password" placeholder="Password" required>
        </div>

        <button class="btn btn-register mt-2">Register</button>
    </form>

    <% if (request.getParameter("error") != null) { %>
        <div class="msg error mt-3">Registration failed. Please try again.</div>
    <% } %>

    <div class="text-center mt-3">
        <a href="index.jsp" class="back-link">← Back to Home</a>
    </div>
</div>

</body>
</html>
