package p1;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Transferservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) {
		try {
			String Toacc = request.getParameter("toacc");
			String RecpName = request.getParameter("accholdername");
			String tramount = request.getParameter("tamount");
			//collecting date from form
			String date = request.getParameter("date");
			
			//converting to sql and inserting into statement  table
			Date sqldate = Date.valueOf(date);

			HttpSession session = request.getSession();
			String accno = (String) session.getAttribute("accountnum");

			Model m = new Model();

			m.setToaccnum(Toacc);
			m.setAmntrecname(RecpName);
			m.setTransferamt(tramount);
			m.setSqldate(sqldate);
			
			m.setAccno(accno);

			boolean status = m.transferAmount();

			if (status == true) {

				response.sendRedirect("/BankApp/transfersuccess.jsp");
			} else {
				response.sendRedirect("/BankApp/transfail.jsp");
			}
		}

		catch (Exception e) {
			e.printStackTrace();
			System.out.println("Problem in transfer servlet page");
		}
	}

}
