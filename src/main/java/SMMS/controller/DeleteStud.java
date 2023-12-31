package SMMS.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import SMMS.dao.StudentLogin;

import SMMS.user.Student;/**
 * Servlet implementation class EditStudent
 */
@WebServlet("/DeleteStud")
public class DeleteStud extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteStud() {
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
		        String UserId = request.getParameter("UserId"); 

		        StudentLogin studentLogin = new StudentLogin();
		        studentLogin.deleteStudent(UserId);
		        request.setAttribute("message", "Student deleted successfully");
		        request.getRequestDispatcher("ViewStudent.jsp").forward(request, response);
		    }
	}


