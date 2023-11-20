package SMMS.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/forgot")
public class forgot extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            
            Connection con = getConnection();

            String userId = request.getParameter("UserId");
            String newPassword = request.getParameter("Password");
            

           
            PreparedStatement ps = con.prepareStatement("UPDATE students SET Password = ?  WHERE UserId = ?");
            ps.setString(1, newPassword);
            ps.setString(2, userId);
           
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