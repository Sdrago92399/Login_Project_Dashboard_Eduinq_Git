<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="UTF-8">
  <title>Resume Form</title>
  <link rel="stylesheet" href="style.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style type="text/css">
  </style>
  <link rel="stylesheet" href="all_component/login.css">
</head>
<body>
  <div class="container">
    <div class="title">Resume</div>
    <div class="content">
      <form action="SubmitResumeServlet" method="post">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Full Name</span>
            <input type="text" name="name" placeholder="Enter your name" required>
          </div>
          <div class="input-box">
            <span class="details">Email</span>
            <input type="email" name="email" placeholder="Enter your email" required>
          </div>
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="tel" name="phone" placeholder="Enter your number" required>
          </div>
          <div class="input-box">
            <span class="details">Address</span>
            <input type="text" name="address" placeholder="Enter your address" required>
          </div>
          <div class="input-box">
            <span class="details">Education</span>
            <input type="text" name="education" placeholder="Enter your education" required>
          </div>
          <div class="input-box">
            <span class="details">Skills</span>
            <input type="text" name="skills" placeholder="Enter your skills" required>
          </div>
          <div class="input-box">
            <span class="details">Experience</span>
            <textarea name="experience" placeholder="Enter your experience" rows="4" cols="50" required></textarea>
          </div>
        </div>
        <div class="button">
          <input type="submit" value="Submit Resume">
        </div>
      </form>
    </div>
  </div>
</body>
</html>