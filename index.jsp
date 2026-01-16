<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Bank Management System</title>

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

        /* animated gradient blur balls */
        .bg-ball {
            position: absolute;
            width: 380px;
            height: 380px;
            border-radius: 50%;
            filter: blur(120px);
            opacity: 0.6;
            animation: float 6s infinite ease-in-out;
        }

        .ball1 { background: #667eea; top: -80px; left: -80px; }
        .ball2 { background: #764ba2; bottom: -60px; right: -40px; animation-delay: 1.5s; }

        @keyframes float {
            0% { transform: translateY(0px); }
            50% { transform: translateY(-40px); }
            100% { transform: translateY(0px); }
        }

        .glass-box {
            width: 440px;
            padding: 45px;
            border-radius: 22px;
            background: rgba(255, 255, 255, 0.08);
            backdrop-filter: blur(12px);
            border: 1px solid rgba(255, 255, 255, 0.1);
            text-align: center;
            box-shadow: 0 0 35px rgba(0,0,0,0.4);
            animation: fadeIn 1.2s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .glass-box h1 {
            font-weight: 700;
            font-size: 36px;
            margin-bottom: 15px;
            letter-spacing: 1px;
        }

        .glass-box p {
            font-size: 14px;
            opacity: 0.8;
            margin-bottom: 35px;
        }

        .btn-custom {
            width: 85%;
            font-size: 18px;
            padding: 12px;
            border-radius: 14px;
            font-weight: 600;
            transition: 0.3s;
        }

        .btn-register {
            background: linear-gradient(45deg, #ff758c, #ff7eb3);
            border: none;
            color: #fff;
        }
        .btn-register:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 18px rgba(255,120,150,0.4);
        }

        .btn-login {
            background: linear-gradient(45deg, #42e695, #3bb2b8);
            border: none;
            color: #fff;
        }
        .btn-login:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 18px rgba(66,230,149,0.4);
        }
    </style>
</head>

<body>

<div class="bg-ball ball1"></div>
<div class="bg-ball ball2"></div>

<div class="glass-box">
    <h1>BankCloud</h1>
    <p>Secure, fast & modern banking crafted by <b>Astha • Aditya • Amit</b></p>

    <a href="register.jsp" class="btn btn-custom btn-register mb-3">Create Account</a>
    <a href="login.jsp" class="btn btn-custom btn-login">Login</a>
</div>

</body>
</html>
