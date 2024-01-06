<%@page import="Servlet_Anu.StudentEntity"%>
<%@ page import="com.db.DBconnect"%>
<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Job Dashboard | By Code Info</title>
<link rel="stylesheet" href="style1.css" />
<!-- Font Awesome Cdn Link -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
<style>
  /* Your existing CSS styles are here */
</style>

<script>
  function showPage(pageId) {
    // Hide all content divs
    document.getElementById('home').style.display = 'none';

    // Show the selected content div
    document.getElementById(pageId).style.display = 'block';

    // Highlight the selected menu item
    const menuItems = document.querySelectorAll('.nav-item');
    menuItems.forEach(item => {
      item.classList.remove('active'); // Remove 'active' class from all items
    });

    const selectedMenuItem = document.querySelector(`[data-page="${pageId}"]`);
    if (selectedMenuItem) {
      selectedMenuItem.classList.add('active'); // Add 'active' class to the selected item
    }
  }
</script>

</head>
<!-- ... (your existing HTML code) ... -->

<body>

<div class="container">
  <nav>
    <div class="navbar">
      <div class="logo">
        <img src="/pic/logo.jpg" alt="">
        <h1>Eduinq</h1>
      </div>
      <ul>
        <li><a href="#" onclick="showPage('home')" data-page="home">
          <i class="fas fa-user"></i>
          <span class="nav-item">My Profile</span>
        </a></li>
        
          <li><a href="Access_Database_Table.jsp">
            <i class="fas fa-chart-bar"></i>
            <span class="nav-item">Access Database</span>
          </a>
          </li>
          
          <li><a href="#">
            <i class="fas fa-tasks"></i>
            <span class="nav-item">Saved Resume</span>
          </a>
          </li>
          
          <li><a href="#">
            <i class="fab fa-dochub"></i>
            <span class="nav-item">Wallet History</span>
          </a>
          </li>
          
          <li><a href="#">
            <i class="fas fa-cog"></i>
            <span class="nav-item">Wallet Recharge</span>
          </a>
          </li>
          
          <li><a href="#">
            <i class="fas fa-question-circle"></i>
            <span class="nav-item">Chat With Team</span>
          </a>
          </li>
          
          <li><a href="forgot_password.jsp">
            <i class="fas fa-question-circle"></i>
            <span class="nav-item">Password Change</span>
          </a>
          </li>
          
          <li><a href="LogoutServlet" class="logout">
            <i class="fas fa-sign-out-alt"></i>
            <span class="nav-item">Logout</span>
          </a>
        
        
        
        
        
        
        
        
        
        
        
        

        <!-- Other menu items remain unchanged -->
      </ul>
    </div>
  </nav>

  
  
  
  
        <%
        StudentEntity user = (StudentEntity) session.getAttribute("userD");
        if (user != null) {
        %>
        <!-- User is logged in -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a href="profile.jsp" class="nav-link"></i><%=user.getName() %></a>
            
            </li>
            
                <div class="col-md-6 rform">
                
                
                
                
                
                
                    <div class="col-md-6 rform">
            <form action="#" method="post" id="home" style="display: none;">
                <div class="form-group">
                    <label for="company">Name</label>
                    <input type="text" class="form-control" id="name" placeholder="Name" name="name" readonly="readonly" value="<%=user.getName()%>">
                </div>
                <div class="form-group">
                    <label for="company">Email Id</label>
                    <input type="email" class="form-control" id="company" placeholder="Email Id" name="companyname" readonly="readonly" value="<%=user.getEmail()%>">
                </div>
                <div class="form-group">
                    <label for="hrcontact">Company Name</label>
                    <input type="text" class="form-control" id="hrcontact" placeholder="Company Name" readonly="readonly" name="contact" value="<%=user.getCompanyName()%>">
                </div>
                <div class="form-group">
                    <label for="hrcontact">Contact Number</label>
                    <input type="text" class="form-control" id="hrcontact" placeholder="Contact Number" readonly="readonly" name="contact" value="<%=user.getPhoneNumber()%>">
                </div>
                <div class="form-group">
                    <label for="hrcontact">Eduinq ReCruinter ID</label>
                    <input type="text" class="form-control" id="hrcontact" placeholder="Eduinq ReCruinter ID" readonly="readonly" name="contact" value="<%=user.getId()%>">
                </div>
                <!-- Your existing form fields and button -->
            </form>
                
            
       
        <%
        } else {
        	 response.sendRedirect("login1.jsp");
        }
        %>
  
  
  
  
  
  
  
  
  
  
  
  

</div>

</body>
</html>
