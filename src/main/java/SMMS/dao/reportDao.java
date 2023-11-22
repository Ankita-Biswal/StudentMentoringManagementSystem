package SMMS.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;
import SMMS.user.Report;
public class reportDao {
	
	private static Connection con;
	
	 public static Connection getConnection() throws ClassNotFoundException, SQLException {
		 try {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smms", "root", "root");
	    }
	   catch(Exception e) {
		   e.printStackTrace();
	   }
		 
		 return con;
	 }
	 
	public boolean addReport(Integer nostds,Integer npas,Integer npias,String remark,String verification) {
		boolean f=false;
		Connection con=null;
	try {
		con=getConnection();
		String sql="insert into report(nostds, npas, npias, remark,verification)values(?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1,nostds);
		ps.setInt(2, npas);
		ps.setInt(3, npias);
		ps.setString(4, remark);
		ps.setString(5, verification);
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

	public List<Report> getReport() {
		List<Report> list=new ArrayList<Report>();
		Report r=null;
		Connection con=null;
		try {
			con=getConnection();
			String sql="select * from report";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				r=new Report();
				r.setId(rs.getInt("id"));
				r.setNostds(rs.getInt("nostds"));
				r.setNpas(rs.getInt("npas"));
				r.setNpias(rs.getInt("npias"));
				r.setRemark(rs.getString("remark"));
				r.setVerification(rs.getString("verification"));
				list.add(r);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		
		
		return list;
		
	}
	 
	public Report getReportById(int id) {
		Report r=null;
		Connection con=null;
		try {
			con=getConnection();
			String sql="select * from report where id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				r=new Report();
				r.setId(rs.getInt("id"));
				r.setNostds(rs.getInt("nostds"));
				r.setNpas(rs.getInt("npas"));
				r.setNpias(rs.getInt("npias"));
				r.setRemark(rs.getString("remark"));
				r.setVerification(rs.getString("verification"));
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return r;
	}
	
	public boolean updateReport(Report r) {
		boolean f=false;
		Connection con=null;
		try {
			con=getConnection();
			String sql="update report set nostds=?,npas=?,npias=?,remark=?,verification=? where id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, r.getNostds());
			ps.setInt(2, r.getNpas());
			ps.setInt(3, r.getNpias());
			ps.setString(4,r.getRemark());
			ps.setString(5,r.getVerification());
			ps.setInt(6,r.getId());
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
	
	  public boolean deleteReport(int id) {
		  boolean f=false;
	    	 Connection conn = null;
	    	    
              
	    	    try {
	    	        conn = getConnection();

	    	        String sql = "delete from report where id=?";
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
