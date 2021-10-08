package p1;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class FilterchngePwd
 */
public class FilterchngePwd implements Filter {

    /**
     * Default constructor. 
     */
    public FilterchngePwd() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		String cpwd = request.getParameter("cpswd");
		String ncpwd = request.getParameter("ncpswd");
		
		if(cpwd.equals(ncpwd)) {		
		chain.doFilter(request, response);
		}
		else {
			((HttpServletResponse) response).sendRedirect("/BankApp/PwdchangeFail.jsp");
		}
	}

	
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
