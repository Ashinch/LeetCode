package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class BaseDao {
	protected static Connection initConn() {
		Connection conn = null;
		
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	    	String url = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=leetcode";
	    	String username = "leetcode";
	    	String password = "123456";
	    	conn = DriverManager.getConnection(url,username,password);
	    	
	    	return conn;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return conn;
	}
}
