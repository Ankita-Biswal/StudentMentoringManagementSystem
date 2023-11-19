package SMMS.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import SMMS.dao.todoDao;
import SMMS.user.*;
/**
 * Servlet implementation class updateCourse
 */
@WebServlet("/updateCourse")
public class updateCourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateCourse() {
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
		String name=request.getParameter("name");
		String todo=request.getParameter("todo");
		String course=request.getParameter("course");
		String assignment=request.getParameter("assignment");
		
		todoDao dao=new todoDao();
		TodoDtls t=new TodoDtls();
		t.setId(id);
		t.setName(name);
		t.setTodo(todo);
		t.setCourse(course);
		t.setAssignment(assignment);
		boolean f=dao.updateTodo(t);
		HttpSession session=request.getSession();
		if(f) {
			
			session.setAttribute("message", "Data Updated successfully");
			response.sendRedirect("viewCourse.jsp");
		}
		else {
			session.setAttribute("message", "Error in updation of data");
			response.sendRedirect("viewCourse.jsp");
		}
		doGet(request, response);
	}

}
