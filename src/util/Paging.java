package util;

import java.util.List;

/**************************
* ˵����    ��ҳ����
***************************
* ������    Paging
* ������    util
***************************/
public class Paging {
	/**************************************************
	 * �޶�����	���� ��̬
	 * ˵����	����ָ��ҳ���ҳ����
	 * ��������	ByList
	 **************************************************
	 * ������
	 * @param 	list			�б���
	 * @param 	pageSize		ҳ���С
	 * @param 	currentPage		��ǰҳ��
	 * @return 	List<?>			���ط�ҳ����б���
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
