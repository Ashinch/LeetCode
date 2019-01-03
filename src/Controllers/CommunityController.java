package Controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import util.Paging;

import Dao.ThemeDao;
import Models.Theme;

/**************************
 * ˵���� ����������
 *************************** 
 * ������ CommunityController 
 * ������ Controllers
 ***************************/
@Controller
public class CommunityController {
	
	private ThemeDao themeDao;
	private static List<Theme> list;
	
	/**************************************************
	 * �޶�����	����
	 * ˵����	��ת����ҳ��
	 * ��������	index
	 **************************************************
	 * ������
	 * @return 	String	��ת��community.jsp
	 **************************************************/
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/community")
	public String index(HttpServletRequest request) {
		int currentPage = 1;
		if (list == null) {
			list = themeDao.getAllTheme();
		}
		@SuppressWarnings("unused")
		List<Theme> themepage = (List<Theme>) Paging.ByList(list, 6, currentPage);
		request.setAttribute("list", list);
		return "community";
	}
}
