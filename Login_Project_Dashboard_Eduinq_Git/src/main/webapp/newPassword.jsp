<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>New Password | CodingLab</title>
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="all_component/login.css">
</head>
<body>
<div class="container">
    <div class="title">Set New Password</div>
    <div class="content">
        <form action="NewPassword" method="post">
            <div class="user-details">
                <div class="input-box">
                    <span class="details">New Password</span>
                    <input type="password" name="newPassword" placeholder="Enter your new password" required>
                </div>
                <div class="input-box">
                    <span class="details">Confirm New Password</span>
                    <input type="password" name="confPassword" placeholder="Confirm your new password" required>
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