package util;

import java.util.List;

/**************************
* 说明：    分页工具
***************************
* 类名：    Paging
* 包名：    util
***************************/
public class Paging {
	/**************************************************
	 * 限定符：	公开 静态
	 * 说明：	根据指定页码分页功能
	 * 方法名：	ByList
	 **************************************************
	 * 参数表：
	 * @param 	list			列表集合
	 * @param 	pageSize		页面大小
	 * @param 	currentPage		当前页面
	 * @return 	List<?>			返回分页后的列表集合
	 **************************************************/
	public static List<?> ByList(List<?> list, int pageSize, int currentPage) {
		int recordCount = list.size();
		int maxPage = recordCount % pageSize == 0 ? recordCount / pageSize : recordCount / pageSize + 1;
		List<Object> pageList = null;
		for (int i = 0; i < pageSize; i++) {
			pageList.add(list.get(currentPage * pageSize + 1 + i));
		}
		return pageList;
	}
}
