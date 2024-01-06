package PostJob;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db.DBconnect;

@WebServlet("/PostJobServlet")
public class PostJobServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // JDBC database URL, username, and password
    

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form parameters
        String jobTitle = request.getParameter("job_title");
        String companyName = request.getParameter("company_name");
        String jobDescription = request.getParameter("job_description");
        String location = request.getParameter("location");
        String email = request.getParameter("email");
        String deadline = request.getParameter("deadline");

        try {
          
            // Establish a connection
            try (Connection connection = DBconnect.getConnection()) {
                // Prepare the SQL statement
                String sql = "INSERT INTO jobs (job_title, company_name, job_description, location, email, deadline) VALUES (?, ?, ?, ?, ?, ?)";
                try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                    preparedStatement.setString(1, jobTitle);
                    preparedStatement.setString(2, companyName);
                    preparedStatement.setString(3, jobDescription);
                    preparedStatement.setString(4, location);
                    preparedStatement.setString(5, email);
                    preparedStatement.setString(6, deadline);

                    // Execute the statement
                    int rowsAffected = preparedStatement.executeUpdate();

                    // Send response to the client
                    response.setContentType("text/html");
                    PrintWriter out = response.getWriter();
                    out.println("<html><body>");
                    out.println("<h2>Job Posted Successfully!</h2>");
                    out.println("<p>Rows Affected: " + rowsAffected + "</p>");
                    out.println("</body></html>");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
