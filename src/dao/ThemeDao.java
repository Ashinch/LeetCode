package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import domain.*;


/**************************
* ˵����    ����Dao��
***************************
* ������    ThemeDao
* ������    dao
***************************/
public class ThemeDao extends BaseDao {
	
	
	/**************************************************
	 * �޶�����	���� ��̬
	 * ˵����	�������
	 * ��������	addTheme
	 **************************************************
	 * ������
	 * @param theme			����Bean��
	 * @return 	boolean		�����Ƿ�ɹ�
	 **************************************************/
	public static boolean addTheme(ThemeBean theme) {
		return insertSingleEntity(theme);
	}
	
	
	/**************************************************
	 * �޶�����	���� ��̬
	 * ˵����	���ݱ���ģ����������
	 * ��������	findThemeBean
	 **************************************************
	 * ������
	 * @param title						����
	 * @return 	ArrayList<ThemeBean>	�����ҵ����б�
	 **************************************************/
	public static ArrayList<ThemeBean> findThemeBean(String title) {
		ArrayList<ThemeBean> themes = new ArrayList<ThemeBean>();
		
		try {
			String sql = "select * from tb_theme where username=%'" + title + "'%";
			Connection conn = initConn();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				ThemeBean theme = new ThemeBean();
				
				theme.setId(rs.getInt("id"));
				theme.setTitle(rs.getString("title"));
		    	theme.setContents(rs.getString("contents"));
		    	theme.setClassify(rs.getString("classify"));
		    	theme.setSender(rs.getInt("sender"));
		    	theme.setDate(rs.getString("date"));
		    	
		    	themes.add(theme);
			}
			
			return themes;
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return themes;
	}
	
}
