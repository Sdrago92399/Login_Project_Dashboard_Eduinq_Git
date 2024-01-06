package my_profile;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.db.DBconnect;

import Servlet_Anu.StudentEntity;


public class My_Progile_DAO {

    private Connection connection;
    
    
	

	public My_Progile_DAO(Connection connection) {
		super();
		this.connection = connection;
	}




	public List<StudentEntity> getAllStudent1(){
		List<StudentEntity> list=new ArrayList<StudentEntity>();
		
		StudentEntity se=null;
		try {
			Connection con=DBconnect.getConnection();
			String sql="select*from otp5";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				se=new StudentEntity();
				se.setId(rs.getInt(1));
				se.setName(rs.getString(2));
				se.setCompanyName(rs.getString(3));
				se.setEmail(rs.getString(4));
				se.setPhoneNumber(rs.getString(5));
			
			list.add(se);
				
			}
	
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
		
	}
	
	
	//Edit
		public StudentEntity getStudentById(int id) {
			
			StudentEntity s=null;
			try {
				String sql="select*from otp5 where id=?";
				Connection con=DBconnect.getConnection();
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setInt(1, id);
				ResultSet rs=ps.executeQuery();
				while (rs.next()) {
				s=new StudentEntity();
				s.setId(rs.getInt(1));
				s.setName(rs.getString(2));
				s.setCompanyName(rs.getString(3));
				s.setEmail(rs.getString(4));
				s.setPhoneNumber(rs.getString(5));
				
				
			
				
					
				}
		
			} catch (Exception e) {
				// TODO: handle exception
			}
			
			return s;
			
		}
}
