package p1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class loginservlet extends HttpServlet {
	private String accno;
	private String name;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) {
		//getting customer id and password from form
		String custid = request.getParameter("custmrid");
		String pwdd = request.getParameter("password");
		
		//calling model class constructor
		Model m =new Model();
		
		//setting custid and password to setters in model class
		m.setCustid(custid);
		m.setPwd(pwdd);
		
		//calling logging method it will return us true so we have store it in a boolean variable
		boolean status = m.login();
		
		//create session to store an account number
		HttpSession session = request.getSession(true);
		
		//checking login 
		if(status==true) {
			accno = m.getAccno();
		    name = m.getName();
			session.setAttribute("accountnum", accno);
			session.setAttribute("Name", name);
			try {
				response.sendRedirect("/BankApp/home.jsp");
			} catch (Exception e) {				
				e.printStackTrace();
				System.out.println("error in redirecting to home page");
			}
		}
		else {
			try {
				response.sendRedirect("/BankApp/loginfail.jsp");
			} catch (Exception e1) {
				e1.printStackTrace();
				System.out.println("error in redirecting to loginfail page");
			}
		}
		
	}	

}
