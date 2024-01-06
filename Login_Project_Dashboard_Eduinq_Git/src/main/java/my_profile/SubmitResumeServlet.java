package my_profile;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db.DBconnect;

@WebServlet("/SubmitResumeServlet")
public class SubmitResumeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form data
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String education = request.getParameter("education");
        String skills = request.getParameter("skills");
        String experience = request.getParameter("experience");

        // JDBC operations
        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            
            // Establish a connection
            connection = DBconnect.getConnection();

            // Prepare SQL statement
            String sql = "INSERT INTO resume (name, email, phone, address, education, skills, experience) VALUES (?, ?, ?, ?, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, phone);
            preparedStatement.setString(4, address);
            preparedStatement.setString(5, education);
            preparedStatement.setString(6, skills);
            preparedStatement.setString(7, experience);

            // Execute the statement
            preparedStatement.executeUpdate();

            // Redirect to a success page or display a success message
            response.sendRedirect("login1.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            // Handle exceptions, redirect to an error page, or display an error message
            response.sendRedirect("error.jsp");

        } finally {
            // Close resources
            try {
                if (preparedStatement != null) {
                    preparedStatement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
