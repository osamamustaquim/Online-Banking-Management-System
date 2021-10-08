package p1;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Getstatement extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) {
		ArrayList al1;
		ArrayList al2;
		ArrayList al3;
		ArrayList al4;
		try {
			HttpSession session = request.getSession();
			String accnum = (String) session.getAttribute("accountnum");
		

			Model m = new Model();
			m.setAccno(accnum);

			al1 = new ArrayList();
			al2 = new ArrayList();
			al3 = new ArrayList();
			al4 = new ArrayList();

			al1 = m.getStatement1();
			al2 = m.getStatement2();
			al3 = m.getStatement3();
			al4 = m.getStatement4();
			
		

			if (al1.isEmpty()==true) {
				response.sendRedirect("/BankApp/nostatement.jsp");				
				
			} else {
				session.setAttribute("al1", al1);
				session.setAttribute("al2", al2);
				session.setAttribute("al3", al3);
				session.setAttribute("al4", al4);
				response.sendRedirect("/BankApp/statement.jsp");				
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("error in statement servlet");
		}
	}

}
