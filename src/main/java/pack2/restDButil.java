package pack2;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import pack1.DB;

public class restDButil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
    public static boolean insertrest(String rname, String rrate, String rloc, String rcon) {
		
    	boolean isSuccess = false;
    	
    	try {
    		con = DB.getConnection();
    		stmt = con.createStatement();
    		String sql2 = "insert into restaurant values(0, '"+rname+"', '"+rrate+"', '"+rloc+"', '"+rcon+"')";
    		int rs = stmt.executeUpdate(sql2);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e){
    		e.printStackTrace();
    	}
    	
    	return false;
    	
    }
    
    public static boolean updaterest(String id, String name, String rate, String location, String contact) {
    	
    	
    	boolean isSuccess = false;
    	try{
    		con = DB.getConnection();
    		stmt = con.createStatement();
    		String sql2 ="update restaurant set name='"+name+"', ratings='"+rate+"', location='"+location+"', contact='"+contact+"' where rid='"+id+"'";
    		int rs = stmt.executeUpdate(sql2);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
	
 public static boolean deleterest(String id5) {
    	
    	
    	boolean isSuccess = false;
    	try{
    		con = DB.getConnection();
    		stmt = con.createStatement();
    		String sql2 ="DELETE FROM restaurant WHERE rid='"+id5+"' ";
    		int rs = stmt.executeUpdate(sql2);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
	
}
