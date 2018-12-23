package dao;
import java.sql.*;

import domain.*;

/**************************
* ˵����    �û�Dao��
***************************
* ������    UserDao
* ������    dao
***************************/
public class UserDao extends BaseDao {
	
	
	/**************************************************
	 * �޶�����	���� ��̬
	 * ˵����	�û����¼
	 * ��������	loginUser
	 **************************************************
	 * ������
	 * @param user			�û�Bean��
	 * @return 	boolean 	�����Ƿ��½�ɹ�
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
	 * �޶�����	���� ��̬
	 * ˵����	�û��������¼
	 * ��������	loginUser
	 **************************************************
	 * ������
	 * @param username		�û���
	 * @param password		����
	 * @return 	boolean 	�����Ƿ��½�ɹ�
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
	 * �޶�����	���� ��̬
	 * ˵����	����û�
	 * ��������	addUser
	 **************************************************
	 * ������
	 * @param user			�û�Bean��
	 * @return 	boolean		�����Ƿ�ɹ�
	 **************************************************/
	public static boolean addUser(UserBean user) {
		return insertSingleEntity(user);
	}
	
	
	/**************************************************
	 * �޶�����	���� ��̬
	 * ˵����	�����û��������û�
	 * ��������	findUser
	 **************************************************
	 * ������
	 * @param username		�û���
	 * @return 	UserBean	�����ҵ����û�Bean��
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
	 * �޶�����	���� ��̬
	 * ˵����	�����û�id�����û�
	 * ��������	findUser
	 **************************************************
	 * ������
	 * @param id			�û�id
	 * @return 	UserBean	�����ҵ����û�Bean��
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
	 * �޶�����	���� ��̬
	 * ˵����	�����û���Ϣ
	 * ��������	updateUser
	 **************************************************
	 * ������
	 * @param user			�û�Bean��
	 * @return 	boolean		�����Ƿ�ɹ�
	 **************************************************/
	public static boolean updateUser(UserBean user) {
		return updateSingleEntity(user);
	}
}
