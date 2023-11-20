package SMMS.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import SMMS.user.*;
public class Filedao {


	private static Connection con;
	
	 public static Connection getCon() throws ClassNotFoundException, SQLException {
		 try {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smms", "root", "root");
	    }
	   catch(Exception e) {
		   e.printStackTrace();
	   }
		 
		 return con;
	 }
	 
	 public boolean deleteFile(int id) {
		  boolean f=false;
	    	 Connection con = null;
	    	    
             
	    	    try {
	    	        con = getCon();

	    	        String sql = "delete from task where id=?";
	    	        PreparedStatement  pstmt = con.prepareStatement(sql);
	    	        pstmt.setInt(1, id);

	    	        int i = pstmt.executeUpdate();
	    	        if (i==1) {
	    	        	f=true;
	    	        }
	    	    } catch (Exception e) {
	    	        e.printStackTrace();
	    	    } 
	    	 return f;
	    }
	 
}
