package servlet_forget_password_anu;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ForgotPassword
 */
@WebServlet("/ForgotPassword")
public class ForgotPassword extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgotPassword() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        RequestDispatcher dispatcher = null;
        int otpvalue = 0;
        HttpSession mysSession = request.getSession();

        // Check if email is not null and not an empty string
        if (email != null && !email.equals("")) {
            // Generate OTP
            Random rand = new Random();
            otpvalue = rand.nextInt(1255650);
System.out.println("Anu Priya 1");
            // Sender's email and password
            final String senderEmail = "ektaimec@gmail.com";
            final String password = "ztlxuuzomckeqaef";

            // Set up mail server properties
            Properties props = new Properties();
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.port", "587");

            // Create session with authentication
            Session session = Session.getInstance(props, new Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(senderEmail, password);
                }
            });

            // Compose message
            try {
                MimeMessage message = new MimeMessage(session);
                message.setFrom(new InternetAddress(senderEmail));
                message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
                message.setSubject("Email Verification");
                message.setText("Your verification code is: " + otpvalue);
                System.out.println("Anu Priya 2");
                // Send the message
                Transport.send(message);
                System.out.println("Message Sent Successfully");

            } catch (MessagingException e) {
                // Handle messaging exception
                e.printStackTrace();
            }
            System.out.println("Anu 1");
            dispatcher = request.getRequestDispatcher("EnterOtp.jsp");
            request.setAttribute("message", "OTP is sent to your email id");
            mysSession.setAttribute("otp", otpvalue);
            mysSession.setAttribute("email", email);
            dispatcher.forward(request, response);
        } else {
            // Handle the case where email is null or an empty string
            dispatcher = request.getRequestDispatcher("ErrorPage.jsp");
            request.setAttribute("error", "Invalid email address");
            dispatcher.forward(request, response);
        }
    }

}
