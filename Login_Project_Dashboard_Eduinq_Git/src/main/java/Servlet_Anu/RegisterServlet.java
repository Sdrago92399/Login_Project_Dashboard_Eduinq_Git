package Servlet_Anu;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.db.DBconnect;

import mail.SendMail1;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	HttpSession session = request.getSession();
        String otp = SendMail1.generateOTP();
        try {
            // Retrieve form parameters
            String fullName = request.getParameter("name");
            String companyName = request.getParameter("company_name");
            String email = request.getParameter("email");
            String phoneNumber = request.getParameter("phone_number");
            String password = request.getParameter("password");

            Connection connection = DBconnect.getConnection();

            if (connection != null) {
                try {
                	 // Calculate the OTP expiration time (e.g., 10 minutes from the current time)
                    long currentTimeMillis = System.currentTimeMillis();
                    long otpExpirationTimeMillis = currentTimeMillis + (10 * 60 * 1000); // 10 minutes in milliseconds

                    // Convert the expiration time to a Timestamp object
                    Timestamp otpExpirationTimestamp = new Timestamp(otpExpirationTimeMillis);
                    // Insert data into the database
                    String sql = "INSERT INTO otp5 (name, company_name, email, phone_number, password,otp,otp_expiration, is_verified) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
                    try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                        preparedStatement.setString(1, fullName);
                        preparedStatement.setString(2, companyName);
                        preparedStatement.setString(3, email);
                        preparedStatement.setString(4, phoneNumber);
                        preparedStatement.setString(5, password);
                        preparedStatement.setString(6, otp);
                        preparedStatement.setTimestamp(7, otpExpirationTimestamp);
                        preparedStatement.setBoolean(8, false);
                        

                        int rowsAffected = preparedStatement.executeUpdate();

                        if (rowsAffected > 0) {
                            // Registration successful
                        	 System.out.println("Successful registration");
                             SendMail1.sendVerificationEmail(email, otp);
                             System.out.println("Email sent successfully");
                             response.sendRedirect("forgot_password.jsp");
                             
                        } else {
                            // Registration failed
                            response.sendRedirect("register.jsp?error=Registration failed");
                            System.out.println("success not ");
                        }
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                    response.sendRedirect("register.jsp?error=Database error");
                } finally {
                    try {
                        connection.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            } else {
                response.sendRedirect("register.jsp?error=Database connection failed");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("register.jsp?error=An unexpected error occurred");
        }
    }
}
