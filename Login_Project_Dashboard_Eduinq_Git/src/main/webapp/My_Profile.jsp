<%@page import="Servlet_Anu.StudentEntity"%>
<%@ page import="com.db.DBconnect"%>
<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <title>User Profile</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

       


        .col-md-6 {
            width: 50%;
            float: left;
            padding: 15px;
            box-sizing: border-box;
        }

        .rform {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-control {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }
    </style>
</head>
<body>

<%
StudentEntity user = (StudentEntity) session.getAttribute("userD");
if (user != null) {
%>
<!-- User is logged in -->

   
    <div class="col-md-6 rform">
        <form action="#" method="post">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" class="form-control" id="name" placeholder="Name" name="name" readonly="readonly" value="<%=user.getName()%>">
            </div>
            <div class="form-group">
                <label for="email">Email Id</label>
                <input type="email" class="form-control" id="email" placeholder="Email Id" name="email" readonly="readonly" value="<%=user.getEmail()%>">
            </div>
            <div class="form-group">
                <label for="company">Company Name</label>
                <input type="text" class="form-control" id="company" placeholder="Company Name" readonly="readonly" name="company" value="<%=user.getCompanyName()%>">
            </div>
            <div class="form-group">
                <label for="phone">Contact Number</label>
                <input type="text" class="form-control" id="phone" placeholder="Contact Number" readonly="readonly" name="phone" value="<%=user.getPhoneNumber()%>">
            </div>
            <div class="form-group">
                <label for="recruiterId">Eduinq Recruiter ID</label>
                <input type="text" class="form-control" id="recruiterId" placeholder="Eduinq Recruiter ID" readonly="readonly" name="recruiterId" value="<%=user.getId()%>">
            </div>
            <!-- Your existing form fields and button -->
        </form>
   
<%
} else {
    response.sendRedirect("login1.jsp");
}
%>

</body>
</html>
