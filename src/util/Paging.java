package util;

import java.util.List;

public class Paging {
	public static List<?> ByList(List<?> list, int pageSize, int currentPage) {
		//  ·ÖÒ³
		int recordCount = list.size();
		int maxPage = recordCount % pageSize == 0 ? recordCount / pageSize : recordCount / pageSize + 1;
		
		List<Object> pageList = null;
		
		for (int i = 0; i < pageSize; i++) {
			pageList.add(list.get(currentPage * pageSize + 1 + i));
		}
		
		return pageList;
	}
}
