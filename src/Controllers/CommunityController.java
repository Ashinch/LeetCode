package Controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import util.Paging;

import Dao.ThemeDao;
import Models.Theme;
import Models.User;

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
	
	@RequestMapping(value = "/goPage")
	public String index(HttpServletRequest request,int currentPage) {
		if (mList == null) {
			mList = (List<Theme>) themeDao.getAllTheme();
		}
		List<Theme> pageList = Paging.ByTheme(mList, 6, currentPage);
		request.setAttribute("list", pageList);
		return "community";
	}
	
	@RequestMapping(value = "/addTheme")
	public String addTheme(HttpServletRequest request) {
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		User user = (User)request.getSession().getAttribute("user"));
		Theme theme = new Theme();
		theme.setTitle(title);
		theme.setContents(content);
		theme.setSender(user.getId());
		theme.setWatch(3);
		theme.setComment(0);
		theme.setReply_date("�ո�");
		theme.setDate("2019-1-11");
		themeDao.addTheme(theme);
		return "community";
	}
	
}
