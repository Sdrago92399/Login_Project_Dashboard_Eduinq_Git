package Servlet_Anu;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.db.DBconnect;


@WebServlet("/login")
public class login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection con = null; // Declare the connection object outside the try-catch block

        try {
            HttpSession session = request.getSession();

            String useremail = request.getParameter("email");
            String password = request.getParameter("password");

            StudentEntity us = new StudentEntity();
            us.setEmail(useremail);
            us.setPassword(password);

            UserDAO dao = new UserDAO(DBconnect.getConnection());
            StudentEntity user = dao.loginUserA(us);

            if (user != null) {
                session = request.getSession();
                session.setAttribute("userD", user);

                // add cookie
                Cookie emailCookie = new Cookie("userEmail", user.getEmail());
                emailCookie.setMaxAge(30 * 24 * 60 * 60);
                response.addCookie(emailCookie);

                response.sendRedirect("dashboard1.jsp");
            } else {
                session = request.getSession();
                session.setAttribute("err", "login failed......");
                response.sendRedirect("login.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                // Close the connection in the finally block
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
