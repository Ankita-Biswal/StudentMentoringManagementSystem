package SMMS.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;
import SMMS.user.TodoDtls;
public class todoDao {
	
	private static Connection con;
	
	 public static Connection getConnection() throws ClassNotFoundException, SQLException {
		 try {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smms", "root", "Ankita@123");
	    }
	   catch(Exception e) {
		   e.printStackTrace();
	   }
		 
		 return con;
	 }
	 
	public boolean addTodo(String name,String todo,String course,String assignment) {
		boolean f=false;
		Connection con=null;
	try {
		con=getConnection();
		String sql="insert into todo(name, todo, course, assignment)values(?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, name);
		ps.setString(2, todo);
		ps.setString(3, course);
		ps.setString(4, assignment);
		
		int i=ps.executeUpdate();
		
		if(i==1) {
			f=true;
		}
	}
	catch(Exception e){
		e.printStackTrace();
		
	}
	return f;
	}

	public List<TodoDtls> getTodo() {
		List<TodoDtls> list=new ArrayList<TodoDtls>();
		TodoDtls t=null;
		Connection con=null;
		try {
			con=getConnection();
			String sql="select * from todo";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				t=new TodoDtls();
				t.setId(rs.getInt("id"));
				t.setName(rs.getString("name"));
				t.setTodo(rs.getString("todo"));
				t.setCourse(rs.getString("course"));
				t.setAssignment(rs.getString("assignment"));
				list.add(t);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		
		
		return list;
		
	}
	 
	public TodoDtls getTodoById(int id) {
		TodoDtls t=null;
		Connection con=null;
		try {
			con=getConnection();
			String sql="select * from todo where id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				t=new TodoDtls();
				t.setId(rs.getInt("id"));
				t.setName(rs.getString("name"));
				t.setTodo(rs.getString("todo"));
				t.setCourse(rs.getString("course"));
				t.setAssignment(rs.getString("assignment"));
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return t;
	}
	
	public boolean updateTodo(TodoDtls t) {
		boolean f=false;
		Connection con=null;
		try {
			con=getConnection();
			String sql="update todo set name=?,todo=?,course=?,assignment=? where id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, t.getName());
			ps.setString(2, t.getTodo());
			ps.setString(3, t.getCourse());
			ps.setString(4,t.getAssignment());
			ps.setInt(5,t.getId());
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return f;
	}
	
	  public boolean deleteTodo(int id) {
		  boolean f=false;
	    	 Connection conn = null;
	    	    
              
	    	    try {
	    	        conn = getConnection();

	    	        String sql = "delete from todo where id=?";
	    	        PreparedStatement  pstmt = conn.prepareStatement(sql);
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
