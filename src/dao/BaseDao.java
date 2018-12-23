package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;
import sun.security.krb5.internal.crypto.RsaMd5CksumType;
import util.ReflectFactory;
import domain.BaseBean;
import domain.ThemeBean;

/**************************
* ˵����    Dao������
***************************
* ������    BaseDao
* ������    dao
***************************/
public class BaseDao {
	
	/**************************************************
	 * �޶�����	���� ��̬
	 * ˵����	Connection ������
	 * ��������	initConn
	 **************************************************
	 * ������
	 * @return 	����Connection ���Ӻõ� Connection ��
	 **************************************************/
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
	

	/**************************************************
	 * �޶�����	���� ��̬
	 * ˵����	��һ����ʵ��
	 * ��������	insertSingleEntity
	 **************************************************
	 * ������
	 * @param entity 	ʵ��
	 * @return boolean 	�����Ƿ�ɹ�
	 **************************************************/
	protected static boolean insertSingleEntity(BaseBean entity) {
		Connection conn = BaseDao.initConn();
		String sql = "insert into " + entity.getTableName() + ReflectFactory.getFiledNamesKey(entity) + 
					 " values(" + ReflectFactory.getFiledNamesValue(entity,0) + ")";
    	
		try {
			PreparedStatement stmt = conn.prepareStatement(sql);
	    	String[] filedNames = ReflectFactory.getFiledNames(entity);
	    	
	    	for (int i=0;i<filedNames.length-2;i++) {
    			stmt.setObject(i+1,ReflectFactory.getFieldValueByName(entity, filedNames[i+2]));
	    	}
	    	
	    	boolean flag = stmt.executeUpdate() > 0 ? true : false;
	    	
	    	stmt.close();
	    	conn.close();
	    	return flag;
	    	
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	
	/**************************************************
	 * �޶�����	���� ��̬
	 * ˵����	��������ʵ��
	 * ��������	insertListEntity
	 **************************************************
	 * ������
	 * @param entities 	ʵ���б�
	 * @return boolean 	�����Ƿ�ɹ�
	 **************************************************/
	protected static boolean insertListEntity(ArrayList<BaseBean> entities) {
		ArrayList<Boolean> flags = new ArrayList<Boolean>();
		
		for (int i=0;i<entities.size();i++) {
			flags.add(insertSingleEntity(entities.get(i)));
		}
		
		boolean flag = false;
		
		for (int i=0;i<flags.size()-1;i++) {
			flag = flags.get(i) && flags.get(i+1);
		}
		
		return flag;
	}
	
	
	/**************************************************
	 * �޶�����	���� ��̬
	 * ˵����	���� id ��һ����ʵ��
	 * ��������	updateSingleEntity
	 **************************************************
	 * ������
	 * @param entity 	ʵ��
	 * @return boolean 	�����Ƿ�ɹ�
	 **************************************************/
	protected static boolean updateSingleEntity(BaseBean entity) {
		Connection conn = BaseDao.initConn();
		String sql = "update " + entity.getTableName() + 
					 " set " + ReflectFactory.getFiledNamesValue(entity,1) +
					 " where id=" + Integer.toString((entity.getId()));

		try {
			PreparedStatement stmt = conn.prepareStatement(sql);
	    	String[] filedNames = ReflectFactory.getFiledNames(entity);
	    	
	    	for (int i=0;i<filedNames.length-2;i++) {
    			stmt.setObject(i+1,ReflectFactory.getFieldValueByName(entity, filedNames[i+2]));
	    	}
	    	
	    	boolean flag = stmt.executeUpdate() > 0 ? true : false;
	    	
	    	stmt.close();
	    	conn.close();
	    	return flag;
	    	
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	
	/**************************************************
	 * �޶�����	���� ��̬
	 * ˵����	��������ʵ��
	 * ��������	updateListEntity
	 **************************************************
	 * ������
	 * @param entities 	ʵ���б�
	 * @return boolean 	�����Ƿ�ɹ�
	 **************************************************/
	protected static boolean updateListEntity(ArrayList<BaseBean> entities) {
		ArrayList<Boolean> flags = new ArrayList<Boolean>();
		
		for (int i=0;i<entities.size();i++) {
			flags.add(updateSingleEntity(entities.get(i)));
		}
		
		boolean flag = false;
		
		for (int i=0;i<flags.size()-1;i++) {
			flag = flags.get(i) && flags.get(i+1);
		}
		
		return flag;
	}
	
	
	/**************************************************
	 * �޶�����	���� ��̬
	 * ˵����	���� id ��һɾ��ʵ��
	 * ��������	deleteSingleEntity
	 **************************************************
	 * ������
	 * @param entity 	ʵ��
	 * @return boolean 	�����Ƿ�ɹ�
	 **************************************************/
	protected static boolean deleteSingleEntity(BaseBean entity) {
		Connection conn = BaseDao.initConn();
		String sql = "delete " + entity.getTableName()  + 
					 " where id=" + Integer.toString((entity.getId()));
		
    	System.out.println(sql);
		try {
			PreparedStatement stmt = conn.prepareStatement(sql);
	    	boolean flag = stmt.executeUpdate() > 0 ? true : false;
	    	
	    	stmt.close();
	    	conn.close();
	    	return flag;
	    	
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	
	/**************************************************
	 * �޶�����	���� ��̬
	 * ˵����	����ɾ��ʵ��
	 * ��������	deleteListEntity
	 **************************************************
	 * ������
	 * @param entities 	ʵ���б�
	 * @return boolean 	�����Ƿ�ɹ�
	 **************************************************/
	protected static boolean deleteListEntity(ArrayList<BaseBean> entities) {
		ArrayList<Boolean> flags = new ArrayList<Boolean>();
		
		for (int i=0;i<entities.size();i++) {
			flags.add(deleteSingleEntity(entities.get(i)));
		}
		
		boolean flag = false;
		
		for (int i=0;i<flags.size()-1;i++) {
			flag = flags.get(i) && flags.get(i+1);
		}
		
		return flag;
	}
}
