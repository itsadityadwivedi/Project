<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Register</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;600&display=swap" rel="stylesheet">
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          crossorigin="anonymous">
    <link rel="stylesheet"
          href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          crossorigin="anonymous">
    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            background: linear-gradient(to right, #1e3c72, #2a5298);
            font-family: 'Poppins', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .glass-card {
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            padding: 40px;
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            width: 100%;
            max-width: 500px;
            color: #fff;
        }

        .glass-card h3 {
            text-align: center;
            margin-bottom: 20px;
            font-weight: 600;
        }

        .form-control {
            background-color: rgba(255, 255, 255, 0.1);
            border: none;
            border-radius: 10px;
            color: #fff;
        }

        .form-control::placeholder {
            color: #ccc;
        }

        .form-text {
            color: #ddd;
        }

        .btn-primary {
            background-color: #00c6ff;
            border: none;
            border-radius: 12px;
            font-weight: bold;
            transition: all 0.3s ease-in-out;
        }

        .btn-primary:hover {
            background-color: #0072ff;
        }

        .linkControl {
            color: #ffeb3b;
            font-weight: 500;
        }

        .linkControl:hover {
            color: #ffffff;
            text-decoration: underline;
        }

        input[type="checkbox"] {
            transform: scale(1.2);
            margin-right: 5px;
        }

        label {
            font-weight: 500;
        }
    </style>
</head>
<body>

<div class="glass-card">
    <h3><i class="fas fa-user-plus"></i> Sign Up Now</h3>
    <p class="text-center">Please fill out this form to register</p>
    <form action="newuserregister" method="post">
        <div class="form-group">
            <label for="firstName">User Name</label>
            <input type="text" name="username" id="firstName" placeholder="Your Username*" required class="form-control form-control-lg">
        </div>
        <div class="form-group">
            <label for="email">Email address</label>
            <input type="email" class="form-control form-control-lg" minlength="6" placeholder="Email*" required name="email" id="email"
                   aria-describedby="emailHelp">
            <small id="emailHelp" class="form-text">We'll never share your email with anyone else.</small>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" class="form-control form-control-lg" placeholder="Password*" required name="password"
                   id="password"
                   pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*?[~`!@#$%\^&*()\-_=+\[\]{};:\x27.,\x22\\|/?><]).{8,}"
                   title="Must contain at least one number, one uppercase, one lowercase, one special character, and 8+ characters">
            <div class="mt-2">
                <input type="checkbox" onclick="showPassword()">Show Password
            </div>
        </div>
        <div class="form-group">
            <label for="Address">Address</label>
            <textarea class="form-control form-control-lg" rows="3" placeholder="Enter Your Address" name="address"></textarea>
        </div>
        <div class="text-center mb-3">
            Already have an account? <a class="linkControl" href="index">Login here</a>
        </div>
        <input type="submit" value="Register" class="btn btn-primary btn-block"><br>
    </form>
</div>

<script>
    function showPassword() {
        const x = document.getElementById("password");
        x.type = (x.type === "password") ? "text" : "password";
    }
</script>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        crossorigin="anonymous"></script>
</body>
</html>
