package SMMS.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import SMMS.dao.reportDao;

/**
 * Servlet implementation class Report
 */
@WebServlet("/Report")
public class Report extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Report() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer nostds=Integer.parseInt(request.getParameter("nostds"));
		Integer npas=Integer.parseInt(request.getParameter("npas"));
		Integer npias=Integer.parseInt(request.getParameter("npias"));
		String remark=request.getParameter("remark");
		String verification=request.getParameter("verification");
		
		reportDao dao=new reportDao();
		boolean f=dao.addReport(nostds,npas, npias, remark,verification);
		
		HttpSession session=request.getSession();
		if(f) {
			
			session.setAttribute("message", "Data added successfully");
			response.sendRedirect("Vreport.jsp");
		}
		else {
			session.setAttribute("message", "Error in generating data");
			response.sendRedirect("Report.jsp");
		}
		doGet(request, response);
	}
	}


