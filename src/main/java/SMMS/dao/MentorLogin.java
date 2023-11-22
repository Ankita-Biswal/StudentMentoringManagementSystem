package SMMS.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import SMMS.user.Mentor;


public class MentorLogin {

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/smms", "root", "root");
    }
    	public Mentor checkLogin1(String UserId, String Password) throws ClassNotFoundException {
		  Connection con = null;
	        Mentor mentor = null;

	        try {
	            con = getConnection();
	            con.setAutoCommit(false);

	            PreparedStatement st = con.prepareStatement("SELECT * FROM mentors WHERE UserId = ? AND Password = ?");
	            st.setString(1, UserId);
	            st.setString(2, Password);
	            

	            ResultSet resultSet = st.executeQuery();
	            if (resultSet.next()) {
	                mentor = new Mentor();
	                mentor.setUserId(resultSet.getString("UserId"));
	                mentor.setName(resultSet.getString("Name"));
	            }

	            con.commit();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } finally {
	            try {
	                if (con != null) {
	                    con.close();
	                }
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }

	        return mentor;
		
	}
    	
    	
}
