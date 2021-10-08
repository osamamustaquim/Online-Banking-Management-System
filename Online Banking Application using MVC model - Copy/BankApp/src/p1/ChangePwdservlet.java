
package p1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ChangePwdservlet extends HttpServlet {
		
	
		private ServletRequest request;

		@Override
		protected void service(HttpServletRequest request, HttpServletResponse response)  {
			
			try {
			String newchpwd = request.getParameter("ncpswd");
			
			HttpSession session = request.getSession();
			String accno =(String) session.getAttribute("accountnum");
		
			
			 Model m = new Model();
			 m.setAccno(accno);
			 m.setPwd(newchpwd);
			
			 boolean status= m.changePassword();
			 if(status==true) {
				response.sendRedirect("/BankApp/PwdchangePass.jsp"); 
			 }
			 else {
				 response.sendRedirect("/BankApp/PwdchangeFail.jsp"); 
			 }
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		}
}
