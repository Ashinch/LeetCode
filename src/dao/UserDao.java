package dao;
import java.sql.*;
import domain.*;

//  用户Dao
public class UserDao extends BaseDao {
	private static Connection conn = initConn();
	
	//  用户登录（UserBean）
	public static boolean loginUser(UserBean user) {
		try {
			String sql = "select * from tb_user where username='" + user.getUsername() + "'";
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				if (rs.getString("password").equals(user.getPassword())) {return true;}
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	//  用户登录（String username, String password）
	public static boolean loginUser(String username, String password) {
		try {
			String sql = "select * from tb_user where username='" + username + "'";
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				if (rs.getString("password").equals(password)) {return true;}
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	//  添加用户（UserBean）
	public static boolean addUser(UserBean user) {
		try {
	    	String sql = "insert into user(username,password)values(?,?)";
	    	PreparedStatement stmt = conn.prepareStatement(sql);
	    	
	    	stmt.setString(1,user.getUsername());
	    	stmt.setString(2,user.getPassword());
	    	
	    	if (stmt.executeUpdate() > 0) {
	    		return true;
	    	}else {
	    		return false;
	    	}
	    	
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	//  查找用户（用户名）
	public static UserBean findUser(String username) {
		UserBean user = new UserBean();
		
		try {
			String sql = "select * from tb_user where username='" + username + "'";
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			user.setUsername(rs.getString("username"));
			user.setPassword(rs.getString("password"));
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return user;
	}
	
	//  查找用户（用户id）
	public static UserBean findUser(int id) {
		UserBean user = new UserBean();
		
		try {
			String sql = "select * from tb_user where id='" + Integer.valueOf(id) + "'";
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			user.setUsername(rs.getString("username"));
			user.setPassword(rs.getString("password"));
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return user;
	}
	
	//  更新用户（UserBean）
	public static boolean updateUser(UserBean user) {
		try {
	    	String sql = "update user set " +
			    			"username=?," +
			    			"password=?" +
			    			"where id=" + Integer.valueOf(user.getId());
	    	
	    	PreparedStatement stmt = conn.prepareStatement(sql);
	    	
	    	stmt.setString(1,user.getUsername());
	    	stmt.setString(2,user.getPassword());
	    	
	    	if (stmt.executeUpdate() > 0) {
	    		return true;
	    	}else {
	    		return false;
	    	}
	    	
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
}
