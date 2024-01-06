package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnect {
	
		public static Connection getConnection() throws SQLException{
	    	Connection con=null;
	    	try{
	    		
	    		//Class.forName("com.mysql.jdbc.Driver");
	    Class.forName("com.mysql.cj.jdbc.Driver");
	    //con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sidd?autoReconnect=true&useSSL=false","root","");
	    con=DriverManager.getConnection("jdbc:mysql://127.1.1.1:3306/anu?&allowPublicKeyRetrieval=true&useSSL=false","root","anu@123456789@");
	   //con = DriverManager.getConnection("jdbc:mysql://134.209.145.67:3306/anu?&allowPublicKeyRetrieval=true&useSSL=false", "root", "Edu@@#768EDU");
	    	}catch (Exception e){
	    		e.printStackTrace();
			
			} 
	    	return con;
	    }}

