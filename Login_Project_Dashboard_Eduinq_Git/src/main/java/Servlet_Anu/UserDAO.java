package Servlet_Anu;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class UserDAO {
	public Connection con;

	public UserDAO(Connection con) {
		super();
		// TODO Auto-generated constructor stub
		this.con=con;
	}
    PreparedStatement preparedStatement ;
    public boolean addUser(StudentEntity us) {
        boolean f = false;
 
   

        try {
           

            // SQL statement to insert a new user into the database
            String sql = "INSERT INTO otp5 (name, email, password) VALUES (?, ?, ?)";
            preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, us.getName());
            preparedStatement.setString(2, us.getEmail());
            preparedStatement.setString(3, us.getPassword());

        int i=preparedStatement.executeUpdate();
        
        if(i==1){
        	f=true;
        	System.out.println("com");
        	
        }
        else {
        	System.out.println("not com");
        }
           
            } catch (SQLException e) {
                e.printStackTrace();
            }
        

        return f;
    }
    

    
    
  /* public boolean loginUser(UserDetails us) {
    	boolean f=false;
    	try {
    		String query="select * from un where  email=? and password=?";
    		
    		 preparedStatement = con.prepareStatement(query);
    		preparedStatement.setString(1, us.getEmail());
    		preparedStatement.setString(2, us.getPassword());
    		
    		ResultSet rs=preparedStatement.executeQuery();
    		System.out.println("dao login email" +rs);
    	
    		if (rs.next()) {
				f=true;
				System.out.println("dao login succ");
			} else {
				System.out.println("dao not succ");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    	
    	
		return f;
    	
    }*/
    
    
    
    public StudentEntity loginUserA(StudentEntity us) {
    	StudentEntity user=null;
    	try {
    		String query="select * from otp5 where  email=? and password=?";
    		
    		 preparedStatement = con.prepareStatement(query);
    		preparedStatement.setString(1, us.getEmail());
    		preparedStatement.setString(2, us.getPassword());
    		
    		ResultSet rs=preparedStatement.executeQuery();
    		System.out.println("dao login email" +rs);
    	
    		if (rs.next()) {
				user=new StudentEntity();
				user.setName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setCompanyName(rs.getString("company_name"));
				user.setPhoneNumber(rs.getString("phone_number"));
			} else {
				System.out.println("dao not succ");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    	
    	
		return user;
    	
    }




}
