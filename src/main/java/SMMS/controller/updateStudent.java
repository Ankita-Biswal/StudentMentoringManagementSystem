package SMMS.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import SMMS.dao.StudentLogin;
import SMMS.user.Student;
/**
 * Servlet implementation class updateStudent
 */
@WebServlet("/updateStudent")
public class updateStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateStudent() {
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

	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        try {
	            
	            Connection con = getConnection();

	            String userId = request.getParameter("UserId");
	            String newPassword = request.getParameter("Password");
	            String newName=request.getParameter("Name");

	           
	            PreparedStatement ps = con.prepareStatement("UPDATE students SET Password = ? ,Name=?  WHERE UserId = ?");
	            ps.setString(1, newPassword);
	            ps.setString(2, newName);
	            ps.setString(3, userId);
	           
	            int i = ps.executeUpdate();
	            if (i > 0) {
	                response.sendRedirect("update.jsp");
	            } else {
	                response.sendRedirect("Error.jsp");
	            }

	    
	            con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }

		

		private Connection getConnection() throws ClassNotFoundException, SQLException {
			 Class.forName("com.mysql.cj.jdbc.Driver");
		        return DriverManager.getConnection("jdbc:mysql://localhost:3306/smms", "root", "root");
		}
}
