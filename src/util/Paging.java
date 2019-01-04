package util;

import java.util.ArrayList;
import java.util.List;

import Models.Theme;
import Models.User;

/**************************
* 说明：    分页工具
***************************
* 类名：    Paging
* 包名：    util
***************************/
public class Paging {
	/**************************************************
	 * 限定符：	公开 静态
	 * 说明：	主题类根据指定页码分页功能
	 * 方法名：	ByTheme
	 **************************************************
	 * 参数表：
	 * @param 	list			列表集合
	 * @param 	pageSize		页面大小
	 * @param 	currentPage		当前页面
	 * @return 	List<Theme>		返回分页后的列表集合
	 **************************************************/
	public static List<Theme> ByTheme(List<Theme> list, int pageSize, int currentPage) {
		int recordCount = list.size();
		@SuppressWarnings("unused")
		int maxPage = recordCount % pageSize == 0 ? recordCount / pageSize : recordCount / pageSize + 1;
		List<Theme> pageList = new ArrayList<Theme>();
		for (int i = 0; i < pageSize; i++) {
			if ((currentPage - 1) * pageSize + i == list.size()) {
				return pageList;
			}
			pageList.add(list.get((currentPage - 1) * pageSize + i));
		}
		return pageList;
	}
	
	/**************************************************
	 * 限定符：	公开 静态
	 * 说明：	用户类根据指定页码分页功能
	 * 方法名：	ByUser
	 **************************************************
	 * 参数表：
	 * @param 	list			列表集合
	 * @param 	pageSize		页面大小
	 * @param 	currentPage		当前页面
	 * @return 	List<User>		返回分页后的列表集合
	 **************************************************/
	public static List<User> ByUser(List<User> list, int pageSize, int currentPage) {
		int recordCount = list.size();
		int maxPage = recordCount % pageSize == 0 ? recordCount / pageSize : recordCount / pageSize + 1;
		List<User> pageList = new ArrayList<User>();
		for (int i = 0; i < pageSize; i++) {
			if ((currentPage - 1) * pageSize + i == list.size()) {
				return pageList;
			}
			pageList.add(list.get((currentPage - 1) * pageSize + i));
		}
		return pageList;
	}
}
