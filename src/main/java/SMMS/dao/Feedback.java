package SMMS.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import SMMS.user.Student;
import SMMS.user.Feedbackuse;

public class Feedback {
	  public static Connection getConnection() throws ClassNotFoundException, SQLException {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        return DriverManager.getConnection("jdbc:mysql://localhost:3306/smms", "root", "root");
	    }

    public boolean submitFeedback(Feedbackuse feedback) throws ClassNotFoundException,IOException{
    	Connection con=null;
        try {
        	 con=getConnection();
            con.setAutoCommit(false);

            try (PreparedStatement st = con.prepareStatement(
                    "INSERT INTO feedback (phone_no,email,description,UserId) VALUES (?, ?, ?,?)")) {
                st.setString(1, feedback.getPhone_no());
                st.setString(2, feedback.getEmail());
                st.setString(3, feedback.getDescription());
                st.setString(4,feedback.getUserId() );
                int result = st.executeUpdate();

                if (result != 0) {
                    con.commit();
                    return true;
                } else {
                    con.rollback();
                    return false;
                }
            } catch (SQLException e) {
                con.rollback();
                e.printStackTrace();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    
    public List<Feedbackuse> getFeedback() {
        List<Feedbackuse> list = null;
        Connection conn = null;
        try {
            conn =getConnection();
            PreparedStatement st = conn.prepareStatement("select * from feedback ");
            ResultSet rs = st.executeQuery();
            list = new ArrayList<>();
            while (rs.next()) {
                Feedbackuse feedback = new Feedbackuse();
                feedback.setF_id(rs.getInt("f_id"));
                feedback.setPhone_no(rs.getString("phone_no"));
                feedback.setEmail(rs.getString("email"));
                feedback.setDescription(rs.getString("description")); 
                feedback.setUserId(rs.getString("UserId"));
                list.add(feedback);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }
   
}

