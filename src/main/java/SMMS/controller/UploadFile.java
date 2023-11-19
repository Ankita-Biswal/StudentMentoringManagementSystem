package SMMS.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import java.io.*;
/**
 * Servlet implementation class UploadFile
 */
@WebServlet("/UploadFile")
@MultipartConfig
public class UploadFile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadFile() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Part p=request.getPart("files");
		String filename=p.getSubmittedFileName();
		
		
		String task=request.getParameter("task");
		
		HttpSession session=request.getSession();
		
	     try {
	            
	            Connection con = getConnection();

	           
	            PreparedStatement ps = con.prepareStatement("insert into task(files,task)values(?,?)");
	            
	            ps.setString(1, filename);
	            ps.setString(2, task);
	           
	            int i = ps.executeUpdate();
	            if (i==1) {
	            	
	            	String path=getServletContext().getRealPath("")+"images";
	            	
	            	File file=new File(path);
	                
	            	p.write(path+File.separator+filename);
	            	//System.out.println(path);
	            	session.setAttribute("message", "upload success!!");
	            	
	                response.sendRedirect("MentorHome.jsp");
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
		        return DriverManager.getConnection("jdbc:mysql://localhost:3306/smms", "root", "Ankita@123");
		}
		
	}
	


