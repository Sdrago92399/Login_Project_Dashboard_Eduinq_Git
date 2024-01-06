package servlet_forget_password_anu;



import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/validateOtpAnu")
public class validateOtpAnu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		

		int value=Integer.parseInt(request.getParameter("otp"));
		HttpSession session=request.getSession();
		int otp=(int)session.getAttribute("otp");
		
		RequestDispatcher dispatcher=null;
		if (value==otp) {
			request.setAttribute("email", request.getParameter("email"));
			request.setAttribute("status", "success");
			System.out.println("Success Validate otp");
			dispatcher=request.getRequestDispatcher("newPassword.jsp");
			dispatcher.forward(request, response);
			System.out.println("Anu Priya 3");
		} else {
           request.setAttribute("message", "wrong otp");
           System.out.println("Success Validate wrong otp");
           System.out.println("Anu 2");
		}
		
	}
}





