<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title> Login Form | CodingLab </title>
   
<style type="text/css">

</style>
 
 
  <link rel="stylesheet" href="all_component/login.css">
   </head>
   
<body>
  <div class="main_div">
    <div class="title">Login Form</div>
   <div class="social_icons">
  <!-- Updated Google icon and text -->
  <a href="#"><i class="fab fa-google"></i> <span>Google</span></a>
  <!-- Existing Twitter icon and text -->
  <a href="#"><i class="fab fa-twitter"></i><span>Twitter</span></a>
</div>
  <form action="login" method="post">
      <div class="input_box">
        <input type="text" name="email" placeholder="Email or Phone" required>
        <div class="icon"><i class="fas fa-user"></i></div>
      </div>
      <div class="input_box">
        <input type="password" name="password" placeholder="Password" required>
        <div class="icon"><i class="fas fa-lock"></i></div>
      </div>
      <div class="option_div">
        <div class="check_box">
          <input type="checkbox">
          <span>Remember me</span>
        </div>
        <div class="forget_div">
          <a href="forgot_password.jsp">Forgot password?</a>
        </div>
      </div>
      <div class="input_box button">
        <input type="submit" value="Login">
      </div>
      <div class="sign_up">
        Not a member? <a href="RegisterAnu.jsp">Signup now</a>
      </div>
    </form>
  </div>
  
</body>
</html>