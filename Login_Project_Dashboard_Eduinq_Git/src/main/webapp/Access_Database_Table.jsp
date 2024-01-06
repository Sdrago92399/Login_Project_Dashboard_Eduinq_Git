<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<%@page import="com.db.DBconnect"%>
<%@page import="Servlet_Anu.AnuDao"%>
<%@page import="Servlet_Anu.StudentEntity"%>
<%@ page import="java.util.List"%>
<html lang="en" dir="ltr">
<head>
<meta charset="UTF-8">
<title>Responsive Registration Form | CodingLab</title>
<link rel="stylesheet" href="style.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
/* Your existing styles here */

/* Add new styles for the table */
table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
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



	<div class="container">
		<div class="title">Registration</div>
		<div class="content">
			<form action="RegisterServlet" method="post">
				<!-- Your existing form fields here -->

				<!-- Add a table for displaying user information -->
				<table>
					<tr>
						<th>Full Name</th>
						<th>Company Name</th>
						<th>Email</th>
						<th>Phone Number</th>
						<th>See Resume</th>
					<th>Request to See Contact Detail</th>
					</tr>
					<!-- You can add dynamic rows based on user registration -->

					<%
					AnuDao dao = new AnuDao(DBconnect.getConnection());
					List<StudentEntity> list = dao.getAllStudents();

					for (StudentEntity s : list) {
					%>

					<tr>
						<td><%=s.getName() %></td>
						<td><%=s.getCompanyName() %></td>
						<td><%=s.getPhoneNumber() %></td>
						<td><%=s.getEmail() %></td>
						
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
		<!-- Add more rows as needed -->
				</table>


			</form>
		</div>
	</div>
</body>
</html>
