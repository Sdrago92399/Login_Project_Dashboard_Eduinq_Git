package Servlet_Anu;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.db.DBconnect;

import my_profile.ResumePojo;

public class AnuDao {
	
	Connection con;
	
	



	public AnuDao(Connection con) {
		super();
		this.con = con;
	}


/*


	public List<StudentEntity> getAllStudents() {
    	StudentEntity s=null;
    	
    	List<StudentEntity> list=new ArrayList<StudentEntity>();
    	try {
			Connection con=DBconnect.getConnection();
    		String sql="select * from otp5";
    		PreparedStatement ps=con.prepareStatement(sql);
    		ResultSet rs=ps.executeQuery();
    		while(rs.next()) {
    			s=new StudentEntity();
    			s.setId(rs.getInt(1));
    			s.setName(rs.getString(2));
    			s.setCompanyName(rs.getString(3));
    			s.setEmail(rs.getString(4));
    			s.setPhoneNumber(rs.getString(5));
    			list.add(s);
    			
    		}
		} catch (Exception e) {
			// TODO: handle exception
			
			e.printStackTrace();
		}
    	
        return list; // Placeholder, replace with actual implementation
        
        
        
       */ 
	  
        


    	public List<ResumePojo> resume() {
    		ResumePojo s=null;
        	
        	List<ResumePojo> list=new ArrayList<ResumePojo>();
        	try {
    			Connection con=DBconnect.getConnection();
        		String sql="select * from resume";
        		PreparedStatement ps=con.prepareStatement(sql);
        		ResultSet rs=ps.executeQuery();
        		while(rs.next()) {
        			s=new ResumePojo();
        			
        			s.setId(rs.getInt(1));
        			s.setName(rs.getString(2));
        			s.setEmail(rs.getString(3));
        			s.setPhone(rs.getString(4));
        			s.setEducation(rs.getString(5));
        			s.setSkills(rs.getString(6));
        			s.setExperience(rs.getString(7));        		
        			list.add(s);
        			
        		}
    		} catch (Exception e) {
    			// TODO: handle exception
    			
    			e.printStackTrace();
    		}
        	
            return list; // Placeholder, replace with actual implementation
    }
	
	
	
}


