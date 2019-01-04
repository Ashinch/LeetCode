package util;

import java.util.ArrayList;
import java.util.List;

import Models.Theme;
import Models.User;

/**************************
* ˵����    ��ҳ����
***************************
* ������    Paging
* ������    util
***************************/
public class Paging {
	/**************************************************
	 * �޶�����	���� ��̬
	 * ˵����	���������ָ��ҳ���ҳ����
	 * ��������	ByTheme
	 **************************************************
	 * ������
	 * @param 	list			�б���
	 * @param 	pageSize		ҳ���С
	 * @param 	currentPage		��ǰҳ��
	 * @return 	List<Theme>		���ط�ҳ����б���
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
	 * �޶�����	���� ��̬
	 * ˵����	�û������ָ��ҳ���ҳ����
	 * ��������	ByUser
	 **************************************************
	 * ������
	 * @param 	list			�б���
	 * @param 	pageSize		ҳ���С
	 * @param 	currentPage		��ǰҳ��
	 * @return 	List<User>		���ط�ҳ����б���
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
