package SMMS.dao;

import java.io.IOException;
import java.security.SecureRandom;
import java.security.Timestamp;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import SMMS.user.Student;
public class StudentLogin {

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/smms", "root", "root");
    }

   
    public Student checkLogin(String UserId, String Password) throws ClassNotFoundException, IOException {
        Connection con = null;
        Student student = null;

        try {
            con = getConnection();
            con.setAutoCommit(false);

            PreparedStatement st = con.prepareStatement("SELECT * FROM students WHERE UserId = ? AND Password = ?");
            st.setString(1, UserId);
            st.setString(2, Password);

            ResultSet resultSet = st.executeQuery();
            if (resultSet.next()) {
                student = new Student();
                student.setUserId(resultSet.getString("UserId"));
                student.setName(resultSet.getString("Name"));     
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

        return student;
    }
    
    public List<Student> getUser() {
        List<Student> list = null;
        Connection conn = null;
        try {
            conn = getConnection();
            PreparedStatement st = conn.prepareStatement("select * from students");
            ResultSet rs = st.executeQuery();
            list = new ArrayList<>();
            while (rs.next()) {
                Student student = new Student();
                student.setUserId(rs.getString("UserId"));
                student.setPassword(rs.getString("Password"));
                student.setName(rs.getString("Name")); 
                list.add(student);
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
        System.out.println(list);
        return list;
    }
    
    public Boolean updateStudent(String UserId, String newName, String newPassword) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        Boolean success=false;

        try {
            conn = getConnection();

            String sql = "UPDATE students SET Name=?, Password=? WHERE UserId=?";
            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, newName);
            pstmt.setString(2, newPassword);
            pstmt.setString(3, UserId);

            int rowsAffected = pstmt.executeUpdate();
            if (rowsAffected > 0) {
            	success=true;
                System.out.println("Student updated successfully.");
            } else {
                System.out.println("No student found with UserId: " + UserId);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        } 
        return success;
    }
   
    
    public void deleteStudent(String UserId) {
    	 Connection conn = null;
    	    PreparedStatement pstmt = null;

    	    try {
    	        conn = getConnection();

    	        String sql = "DELETE FROM students WHERE UserId=?";
    	        pstmt = conn.prepareStatement(sql);

    	        pstmt.setString(1, UserId);

    	        int rowsAffected = pstmt.executeUpdate();
    	        if (rowsAffected > 0) {
    	            System.out.println("Student deleted successfully.");
    	        } else {
    	            System.out.println("No student found with UserId: " + UserId);
    	        }
    	    } catch (SQLException | ClassNotFoundException e) {
    	        e.printStackTrace();
    	    } finally {
    	        try {
    	            if (conn != null) {
    	                conn.close();
    	            }
    	            if (pstmt != null) {
    	                pstmt.close();
    	            }
    	        } catch (SQLException e) {
    	            e.printStackTrace();
    	        }
    	    }
    	 
    }


    }



    

