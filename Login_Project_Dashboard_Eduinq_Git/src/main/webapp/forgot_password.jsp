<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Forgot Password | CodingLab</title>
   
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="all_component/login.css">
</head>
<body>

<div class="container">
    <div class="title">Forgot Password</div>
    <div class="content">
     <form action="ForgotPassword" method="post">
            <div class="user-details">
                <div class="input-box">
                    <span class="details">Email</span>
                    <input type="text" name="email" placeholder="Enter your email" required>
                </div>
            </div>

            <div class="button">
                <input type="submit" value="Reset Password">
            </div>
        </form>
    </div>
</div>

</body>
</html>
