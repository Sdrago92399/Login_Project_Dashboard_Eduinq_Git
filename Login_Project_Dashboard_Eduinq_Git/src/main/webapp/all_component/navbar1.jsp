<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title>Responsive Registration Form | CodingLab</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="all_component/login.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style type="text/css">
      /* Add any additional styles for your navbar here */
      body {
        margin: 0;
        font-family: Arial, sans-serif;
      }

      .navbar {
        overflow: hidden;
        background-color: #333; /* You can change the background color */
      }

      .navbar a {
        float: left;
        display: block;
        color: white;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
      }

      .navbar a:hover {
        background-color: #ddd; /* Change the background color on hover */
        color: black;
      }
    </style>
  </head>
  <body>

    <!-- Navbar -->
    <div class="navbar">
      <a href="#home">Home</a>
      <a href="#about">About Us</a>
      <a href="#contact">Contact</a>
    </div>

    <div class="container">
      <div class="title">Registration</div>
      <div class="content">
        <!-- Your registration form goes here -->
        <form action="RegisterServlet" method="post">
          <!-- ... (your existing form code) ... -->
          <div class="button">
            <input type="submit" value="Register">
          </div>
        </form>
      </div>
    </div>

  </body>
</html>
