package servlet_forget_password_anu;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.db.DBconnect;

@WebServlet("/NewPassword")
public class NewPassword extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public NewPassword() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        String newPassword = request.getParameter("newPassword");
        String confPassword = request.getParameter("confPassword");
        RequestDispatcher dispatcher = null;

        if (newPassword != null && confPassword != null && newPassword.equals(confPassword)) {
            try {
                Connection con = DBconnect.getConnection();
                PreparedStatement pst = con.prepareStatement("update otp5 set password=? where email=?");
                pst.setString(1, newPassword);
                pst.setString(2, (String) session.getAttribute("email"));

                int rowCount = pst.executeUpdate();
                if (rowCount > 0) {
                    System.out.println("Reset Success");
                    dispatcher = request.getRequestDispatcher("login.jsp");
                } else {
                    System.out.println("Reset not Success");
                    dispatcher = request.getRequestDispatcher("login.jsp");
                }
            } catch (Exception e) {
                e.printStackTrace(); // Print the exception for debugging purposes
            }
        } else {
            System.out.println("Passwords do not match");
            dispatcher = request.getRequestDispatcher("resetPassword.jsp"); // Adjust the JSP page accordingly
        }

        dispatcher.forward(request, response);
    }
}
