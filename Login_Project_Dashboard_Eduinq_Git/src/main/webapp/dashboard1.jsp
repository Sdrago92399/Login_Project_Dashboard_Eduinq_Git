<%@page import="my_profile.ResumePojo"%>
<%@page import="Servlet_Anu.AnuDao"%>
<%@page import="com.db.DBconnect"%>
<%@ page import="java.util.List"%>
<%@page import="Servlet_Anu.StudentEntity"%>
<%@ page import="com.db.DBconnect"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Dashboard | By Code Info</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link rel="stylesheet" href="css/style.css"> <!-- Make sure to include your actual stylesheet -->
    <style>
        /* Your existing CSS styles are here */
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }
        
        
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
    </style>
</head>
<body>

<%
  StudentEntity se = (StudentEntity) session.getAttribute("userD");
  if (se != null) {
%>


<input type="checkbox" id="checkbox">
<header class="header">
    <h2 class="u-name">Eduinq
        <label for="checkbox">
            <i id="navbtn" class="fa fa-bars" aria-hidden="true"></i>
        </label>
    </h2>
    <i class="fa fa-user" aria-hidden="true"></i>
</header>

<div class="body">
    <nav class="side-bar">
        <ul>
            <li>
                <a href="#">
                    <i class="fa fa-desktop" aria-hidden="true"></i>
                    <span >Dashboard</span>
                </a>
            </li>
            <li>
                <a href="#" onclick="showPage('home')" data-page="home">
                    <i class="fas fa-user"></i>
                    <span class="nav-item">My Profile</span>
                </a>
            </li>
            
               <li>
                <a href="Post_a_Job.jsp">
                    <i class="fa-solid fa-phone" aria-hidden="true"></i>
                    <span>Post a Job </span>
                </a>
            </li>
            
            
            <li>
                <a href="#" onclick="showPage('home1')" data-page="home1">
                    <i class="fas fa-user"></i>
                    <span class="nav-item">Access Database</span>
                </a>
            </li>
            <li>
                <a href="My_Profile.jsp">
                    <i class="fa fa-info-circle" aria-hidden="true"></i>
                    <span>Saved Resume</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-cog" aria-hidden="true"></i>
                    <span>Wallet History</span>
                </a>
            </li>
            <li>
                <a href="Wallet_Recharge.jsp">
                    <i class="fa fa-cog" aria-hidden="true"></i>
                    <span>Wallet Recharge</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa-brands fa-rocketchat" aria-hidden="true"></i>
                    <span>Chat With Team</span>
                </a>
            </li>
            
      
        
            
            <li>
                <a href="forgot_password.jsp">
                    <i class="fas fa-question-circle"></i>
                    <span class="nav-item">Password Change</span>
                </a>
            </li>
            <li>
                <a href="logout.jsp">
                    <i class="fa fa-power-off" aria-hidden="true"></i>
                    <span>Logout</span>
                </a>
            </li>
        </ul>
    </nav>
    
    
    
    
    
    
    
    
    <%--My Profile --%>






   <section class="section-1" id="home" style="display: none;  ">
  
        <%
        StudentEntity user = (StudentEntity) session.getAttribute("userD");
        if (user != null) {
        %>
        <!-- User is logged in -->
                  
            </li>
            
                
                    <div class="col-md-6 rform">
            <form action="#" method="post">
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
            
       
        
    </section>

  
    <section class="section-1" id="home1" style="display: none;">
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Address</th>
                <th>Education</th>
                <th>Skills</th>
                <th>Experience</th>
                <th>See Resume</th>
                <th>Request to See Contact Detail</th>
            </tr>

            <%
                AnuDao dao = new AnuDao(DBconnect.getConnection());
                List<ResumePojo> list = dao.resume();

                for (ResumePojo s : list) {
            %>
            <tr>
            
                <td><%= s.getId() %></td>
                <td><%= s.getName() %></td>
                <td><%= s.getEmail() %></td>
                <td><%= s.getPhone() %></td>
                <td><%= s.getAddress() %></td>
                <td><%= s.getEducation() %></td>
                <td><%= s.getSkills() %></td>
                <td><%= s.getExperience() %></td>

                <td style="border: 1px solid black; width: 120px;">
                    <a class="btn btn-primary btn-sm" href="" target="_blank">Show Resume</a>
                </td>

                <td style="border: 1px solid black; width: 120px;">
                    <a class="btn btn-primary btn-sm" href="" target="_blank">Show Contact Details</a>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </section>
</div>

<script>
    // Your JavaScript code
    function showPage(pageId) {
        // Hide all content divs
        document.getElementById('home').style.display = 'none';
        document.getElementById('home1').style.display = 'none';

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
<%
  } else {
	  response.sendRedirect("login1.jsp");

  }
%>
</body>
</html>
