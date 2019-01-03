package Controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
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
	@Autowired
	private ThemeDao themeDao;
	private static List<Theme> mList;
	
	/**************************************************
	 * �޶�����	����
	 * ˵����	��ת����ҳ��
	 * ��������	index
	 **************************************************
	 * ������
	 * @return 	String	��ת��community.jsp
	 **************************************************/
	@RequestMapping(value = "/community")
	public String index(HttpServletRequest request) {
		int currentPage = 1;
		if (mList == null) {
			mList = (List<Theme>) themeDao.getAllTheme();
		}
		List<Theme> pageList = Paging.ByTheme(mList, 6, currentPage);
		request.setAttribute("list", pageList);
		return "community";
	}
}
