package SMMS.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import SMMS.dao.todoDao;
import SMMS.user.TodoDtls;

/**
 * Servlet implementation class deleteCourse
 */
@WebServlet("/deleteCourse")
public class deleteCourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteCourse() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		todoDao dao=new todoDao();
		
		
		boolean f=dao.deleteTodo(id);
		HttpSession session=request.getSession();
		if(f) {
			
			session.setAttribute("message", "Data deleted successfully");
			response.sendRedirect("viewCourse.jsp");
		}
		else {
			session.setAttribute("message", "Error in deletion of data");
			response.sendRedirect("MentorHome.jsp");
		}
	}
	



}
