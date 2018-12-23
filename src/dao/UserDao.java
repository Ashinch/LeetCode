package dao;
import java.sql.*;

import domain.*;

/**************************
* 说明：    用户Dao类
***************************
* 类名：    UserDao
* 包名：    dao
***************************/
public class UserDao extends BaseDao {
	
	
	/**************************************************
	 * 限定符：	公开 静态
	 * 说明：	用户类登录
	 * 方法名：	loginUser
	 **************************************************
	 * 参数表：
	 * @param user			用户Bean类
	 * @return 	boolean 	返回是否登陆成功
	 **************************************************/
	public static boolean loginUser(UserBean user) {
		try {
			String sql = "select * from " + user.getTableName() +
						 " where username='" + user.getUsername() + "'";
			
			Connection conn = initConn();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				if (rs.getString("password").equals(user.getPassword())) {
					
					rs.close();
					stmt.close();
					conn.close();
					return true;
				}
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	
	/**************************************************
	 * 限定符：	公开 静态
	 * 说明：	用户名密码登录
	 * 方法名：	loginUser
	 **************************************************
	 * 参数表：
	 * @param username		用户名
	 * @param password		密码
	 * @return 	boolean 	返回是否登陆成功
	 **************************************************/
	public static boolean loginUser(String username, String password) {
		try {
			String sql = "select * from tb_user where username='" + username + "'";
			Connection conn = initConn();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				if (rs.getString("password").equals(password)) {
					
					rs.close();
					stmt.close();
					conn.close();
					return true;
				}
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	
	/**************************************************
	 * 限定符：	公开 静态
	 * 说明：	添加用户
	 * 方法名：	addUser
	 **************************************************
	 * 参数表：
	 * @param user			用户Bean类
	 * @return 	boolean		返回是否成功
	 **************************************************/
	public static boolean addUser(UserBean user) {
		return insertSingleEntity(user);
	}
	
	
	/**************************************************
	 * 限定符：	公开 静态
	 * 说明：	根据用户名查找用户
	 * 方法名：	findUser
	 **************************************************
	 * 参数表：
	 * @param username		用户名
	 * @return 	UserBean	返回找到的用户Bean类
	 **************************************************/
	public static UserBean findUser(String username) {
		UserBean user = new UserBean();
		
		try {
			String sql = "select * from tb_user where username='" + username + "'";
			Connection conn = initConn();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			user.setUsername(rs.getString("username"));
			user.setPassword(rs.getString("password"));
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return user;
	}
	
	
	/**************************************************
	 * 限定符：	公开 静态
	 * 说明：	根据用户id查找用户
	 * 方法名：	findUser
	 **************************************************
	 * 参数表：
	 * @param id			用户id
	 * @return 	UserBean	返回找到的用户Bean类
	 **************************************************/
	public static UserBean findUser(int id) {
		UserBean user = new UserBean();
		
		try {
			String sql = "select * from tb_user where id='" + Integer.valueOf(id) + "'";
			Connection conn = initConn();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			user.setUsername(rs.getString("username"));
			user.setPassword(rs.getString("password"));
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return user;
	}
	
	
	/**************************************************
	 * 限定符：	公开 静态
	 * 说明：	更新用户信息
	 * 方法名：	updateUser
	 **************************************************
	 * 参数表：
	 * @param user			用户Bean类
	 * @return 	boolean		返回是否成功
	 **************************************************/
	public static boolean updateUser(UserBean user) {
		return updateSingleEntity(user);
	}
}
