package SMMS.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import SMMS.dao.todoDao;/**
 * Servlet implementation class addDetails
 */
@WebServlet("/addDetails")
public class addDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addDetails() {
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
		
		String name=request.getParameter("name");
		String todo=request.getParameter("todo");
		String course=request.getParameter("course");
		String assignment=request.getParameter("assignment");
		
		todoDao dao=new todoDao();
		boolean f=dao.addTodo(name, todo, course, assignment);
		
		HttpSession session=request.getSession();
		if(f) {
			
			session.setAttribute("message", "Data added successfully");
			response.sendRedirect("Courses.jsp");
		}
		else {
			session.setAttribute("message", "Error in generating data");
			System.out.println("Courses.jsp");
		}
		doGet(request, response);
	}

}
