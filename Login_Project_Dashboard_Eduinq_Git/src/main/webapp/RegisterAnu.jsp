<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title> Responsive Registration Form | CodingLab </title>
    <link rel="stylesheet" href="style.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <style type="text/css">

     </style>
      <link rel="stylesheet" href="all_component/login.css">
   </head>
   
<body>
  <div class="container">
    <div class="title">Registration</div>
    <div class="content">
      <form action="RegisterServlet" method="post">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Full Name</span>
            <input type="text" name="name" placeholder="Enter your name" required>
          </div>
          <div class="input-box">
            <span class="details">Company name</span>
            <input type="text" name="company_name" placeholder="Enter your Company name" required>
          </div>
          <div class="input-box">
            <span class="details">Email</span>
            <input type="text" name="email" placeholder="Enter your email" required>
          </div>
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="text" name="phone_number" placeholder="Enter your number" required>
          </div>
          <div class="input-box">
            <span class="details">Password</span>
            <input type="text" name="password" placeholder="Enter your password" required>
          </div>
          <div class="input-box">
            <span class="details">Confirm Password</span>
            <input type="text" name="re_password" placeholder="Confirm your password" required>
          </div>
        </div>
  
     
        <div class="button">
          <input type="submit" value="Register">
        </div>
                    <div class="sign_up">
        Already a member? <a href="login1.jsp">Login Here</a>
      </div>
      </form>
    </div>
  </div>

</body>
</html>