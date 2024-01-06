<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Enter OTP | CodingLab</title>
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="all_component/login.css">
</head>
<body>

<div class="container">
    <div class="title">Enter OTP</div>
    <div class="content">
        <form action="validateOtpAnu" role="form" autocomplete="off" class="form" method="post">
            <div class="user-details">
                <div class="input-box">
                    <span class="details">OTP</span>
                    <input type="text" name="otp" placeholder="Enter OTP" required>
                </div>
            </div>

            <div class="button">
                <input type="submit" value="Submit OTP">
            </div>
        </form>
    </div>
</div>

</body>
</html>
