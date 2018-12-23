package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import domain.*;


/**************************
* 说明：    主题Dao类
***************************
* 类名：    ThemeDao
* 包名：    dao
***************************/
public class ThemeDao extends BaseDao {
	
	
	/**************************************************
	 * 限定符：	公开 静态
	 * 说明：	添加主题
	 * 方法名：	addTheme
	 **************************************************
	 * 参数表：
	 * @param theme			主题Bean类
	 * @return 	boolean		返回是否成功
	 **************************************************/
	public static boolean addTheme(ThemeBean theme) {
		return insertSingleEntity(theme);
	}
	
	
	/**************************************************
	 * 限定符：	公开 静态
	 * 说明：	根据标题模糊查找主题
	 * 方法名：	findThemeBean
	 **************************************************
	 * 参数表：
	 * @param title						标题
	 * @return 	ArrayList<ThemeBean>	返回找到的列表
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
