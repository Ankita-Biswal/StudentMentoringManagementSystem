package SMMS.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SMMS.dao.StudentLogin;
import SMMS.user.Student;

/**
 * Servlet implementation class ViewStudent
 */
@WebServlet("/ViewStudent")
public class ViewStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewStudent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 StudentLogin dao = new StudentLogin();
	        List<Student> list = dao.getUser();
	        
	        if (list != null && !list.isEmpty()) {
	            request.setAttribute("StudentData", list);
	        } else {
	           
	            String errorMessage = "No student data available.";
	            request.setAttribute("errorMessage", errorMessage);
	        }
	        
	        RequestDispatcher rd = request.getRequestDispatcher("/ViewStudent.jsp");
	        rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
