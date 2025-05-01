<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <title>User Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          crossorigin="anonymous">
    <style>
        body {
            background: linear-gradient(to right, #2980b9, #6dd5fa, #ffffff);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .login-card {
            background: #ffffff;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
        }

        .login-card h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #007bff;
        }

        .form-control {
            border-radius: 10px;
        }

        .btn-primary {
            border-radius: 10px;
        }

        .register-link {
            text-align: center;
            margin-top: 10px;
        }

        .error-message {
            color: red;
            text-align: center;
        }

        .form-icon {
            position: absolute;
            left: 10px;
            top: 9px;
            color: #007bff;
        }

        .input-group {
            position: relative;
        }

        .input-group input {
            padding-left: 35px;
        }
    </style>
</head>
<body>

<div class="login-card">
    <h2><i class="fas fa-user-circle"></i> User Login</h2>
    <form action="userloginvalidate" method="post">
        <div class="form-group input-group">
            <i class="fas fa-user form-icon"></i>
            <input type="text" name="username" id="username" placeholder="Username*" required class="form-control form-control-lg">
        </div>

        <div class="form-group input-group">
            <i class="fas fa-lock form-icon"></i>
            <input type="password" class="form-control form-control-lg" placeholder="Password*" required name="password" id="password">
        </div>

        <input type="submit" value="Login" class="btn btn-primary btn-block">
        <div class="register-link">
            Don't have an account? <a href="/register">Register here</a>
        </div>
        <br>
        <div class="error-message">${message}</div>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" crossorigin="anonymous"></script>
</body>
</html>
