package SMMS.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import SMMS.dao.reportDao;
import SMMS.user.Report;

/**
 * Servlet implementation class updateReport
 */
@WebServlet("/updateReport")
public class updateReport extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateReport() {
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
		int id=Integer.parseInt(request.getParameter("id"));
		int nostds=Integer.parseInt(request.getParameter("nostds"));
		int npas=Integer.parseInt(request.getParameter("npas"));
		int npias=Integer.parseInt(request.getParameter("npias"));
		String remark=request.getParameter("remark");
		String verification=request.getParameter("verification");
		reportDao dao=new reportDao();
		Report r=new Report();
		r.setId(id);
		r.setNostds(nostds);
		r.setNpas(npas);
		r.setNpias(npias);
		r.setRemark(remark);
		r.setVerification(verification);
		boolean f=dao.updateReport(r);
		HttpSession session=request.getSession();
		if(f) {
			
			session.setAttribute("message", "Data Updated successfully");
			response.sendRedirect("Vreport.jsp");
		}
		else {
			session.setAttribute("message", "Error in updation of data");
			response.sendRedirect("Vreport.jsp");
		}
		doGet(request, response);
	}

	}


