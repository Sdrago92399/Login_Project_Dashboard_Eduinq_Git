<%@page import="my_profile.ResumePojo"%>
<%@page import="Servlet_Anu.AnuDao"%>
<%@page import="com.db.DBconnect"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resume Data</title>
    <!-- Add your styling or link to a CSS file here -->
    <style>
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
    </style>
</head>
<body>

    <h2>Resume Data</h2>

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
                
                
                <td style="border: 1px solid black; width: 120px;"><a
							class="btn btn-primary btn-sm"
							href="" target="_blank">show resume</a></td>
								
								
						<td style="border: 1px solid black; width: 120px;"><a
							class="btn btn-primary btn-sm"
							href="" target="_blank">Show Contact Details</a></td>
								
            </tr>
            
            
            
            
        <%
            }
        %>

    </table>
</body>
</html>
