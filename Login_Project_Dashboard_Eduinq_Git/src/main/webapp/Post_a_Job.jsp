<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="UTF-8">
  <title>Post a Job | Your Company</title>
  <link rel="stylesheet" href="style.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="all_component/job_post.css">
  <style type="text/css">
  /* Reset some default styles */
body, html {
  margin: 0;
  padding: 0;
}

body {
  font-family: 'Arial', sans-serif;
  background-color: #f4f4f4;
}

.container {
  max-width: 600px;
  margin: 80px auto;
  background: #fff;
  padding: 20px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  border-radius: 8px;
}

.title {
  text-align: center;
  font-size: 24px;
  margin-bottom: 20px;
  color: #333;
}

.content {
  display: flex;
  flex-direction: column;
}

.user-details {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}

.input-box {
  width: calc(50% - 10px);
  margin-bottom: 15px;
}

.input-box textarea {
  height: 80px;
}

.details {
  display: block;
  margin-bottom: 5px;
  color: #888;
}

input,
textarea {
  width: 100%;
  padding: 10px;
  box-sizing: border-box;
  border: 1px solid #ddd;
  border-radius: 4px;
  margin-top: 5px;
}

.button {
  text-align: center;
  margin-top: 20px;
}

input[type="submit"] {
  padding: 10px 20px;
  background-color: #4caf50;
  color: #fff;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 16px;
}

input[type="submit"]:hover {
  background-color: #45a049;
}
  
  </style>
</head>

<body>

  <div class="container">
    <div class="title">Post a Job</div>
    <div class="content">
      <form action="PostJobServlet" method="post">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Job Title</span>
            <input type="text" name="job_title" placeholder="Enter job title" required>
          </div>
          <div class="input-box">
            <span class="details">Company Name</span>
            <input type="text" name="company_name" placeholder="Enter your company name" required>
          </div>
          <div class="input-box">
            <span class="details">Job Description</span>
            <textarea name="job_description" placeholder="Enter job description" required></textarea>
          </div>
          <div class="input-box">
            <span class="details">Location</span>
            <input type="text" name="location" placeholder="Enter job location" required>
          </div>
          <div class="input-box">
            <span class="details">Email</span>
            <input type="text" name="email" placeholder="Enter your email" required>
          </div>
          <div class="input-box">
            <span class="details">Application Deadline</span>
            <input type="date" name="deadline" required>
          </div>
        </div>

        <div class="button">
          <input type="submit" value="Post Job">
        </div>
      </form>
    </div>
  </div>

</body>

</html>
