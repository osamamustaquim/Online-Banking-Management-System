package p1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Loanservlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)  {
		try {
			
			String loanserv = request.getParameter("loans");
			String loannameserv = request.getParameter("loanname");
			String loanmailserv = request.getParameter("loanemail");
			String loanphoneserv = request.getParameter("loanphone");
			String loanstateserv = request.getParameter("loanstate");
			String loanpanserv = request.getParameter("loanpan");
			
			Model m = new Model();
			
			m.setLoans(loanserv);			
			m.setLoanname(loannameserv);
			m.setLoanmail(loanmailserv);
			m.setLoanphone(loanphoneserv);
			m.setLoanstate(loanstateserv);
			m.setLoanpan(loanpanserv);
			
			boolean status = m.loan();
			
			if (status == true) {

				response.sendRedirect("/BankApp/loansubmitsuccess.jsp");
			} else {
				response.sendRedirect("/BankApp/loansubmitfail.jsp");
			}
			
			
		} 
		
		catch (Exception e) {
			e.printStackTrace();
			System.out.println("Problem in loan servlet page");
		}
		
		
	}

}
