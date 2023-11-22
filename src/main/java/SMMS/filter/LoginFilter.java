package SMMS.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "LoginController", urlPatterns = { "/StudentHome.jsp", "/MentorHome.jsp" ,""})
public class LoginFilter implements Filter {
	
	 private static final long MAX_SESSION_TIME = 30*10* 1000;// 2 minutes for instant back

	    @Override
	    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
	            throws IOException, ServletException {

	        HttpServletRequest req = (HttpServletRequest) request;
	        HttpServletResponse res = (HttpServletResponse) response;

	        HttpSession session = req.getSession(false);

	        if (session != null && session.getAttribute("user") != null) {
	            long loginTime = (Long) session.getAttribute("loginTime");
	            long currentTime = System.currentTimeMillis();
	            long elapsedTime = currentTime - loginTime;

	                if (elapsedTime < MAX_SESSION_TIME) {
	                   
	                    chain.doFilter(request, response); // Allow access without reauthentication
	                    return;
	                } else {
	                    // Redirect to login if instant back timeout exceeded
	                    res.sendRedirect("Login.jsp");
	                    return;
	                }
	            }
    
	        }

	    
}

