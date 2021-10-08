package p1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ResetPassword extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) {
		
	
	try {
		String Forgotpwd = request.getParameter("forgotpwd");
		
		HttpSession session = request.getSession();
		String tomail =(String) session.getAttribute("tomail");
	
		
		 Model m = new Model();
		
		 boolean status= m.forgotPwd(Forgotpwd, tomail);
		 if(status==true) {
			response.sendRedirect("/BankApp/Changed.jsp"); 
		 }
		 else {
			 response.sendRedirect("/BankApp/Failtochange.jsp"); 
		 }
		}
		catch(Exception e) {
			e.printStackTrace();
		}

}
}
