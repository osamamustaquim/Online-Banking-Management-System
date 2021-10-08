
package p1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class balanceservlet extends HttpServlet {
	private String balance;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) {
		try {

			// getting account number from session stored in loginservlet
			HttpSession session = request.getSession();

			// getting account from session that is stored value left side one
			String accnumber = (String) session.getAttribute("accountnum");

			// calling model constructor
			Model m = new Model();
			System.out.println(accnumber);
			// setting accont number
			m.setAccno(accnumber);

			// checking status of balance
			boolean status = m.checkBalance();

			if (status == true) {

				balance = m.getBalance();

				session.setAttribute("balance", balance);

				response.sendRedirect("/BankApp/balance.jsp");
			} else {
				response.sendRedirect("/BankApp/balancefail.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("problem in balanceservlet");
		}
	}

}
