package Controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import util.Paging;

import Dao.ThemeDao;
import Models.Theme;

/**************************
 * 说明： 社区控制器
 *************************** 
 * 类名： CommunityController 
 * 包名： Controllers
 ***************************/
@Controller
public class CommunityController {
	
	private ThemeDao themeDao;
	private static List<Theme> list;
	
	/**************************************************
	 * 限定符：	公开
	 * 说明：	跳转社区页面
	 * 方法名：	index
	 **************************************************
	 * 参数表：
	 * @return 	String	跳转到community.jsp
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
