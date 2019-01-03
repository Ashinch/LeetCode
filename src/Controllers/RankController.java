package Controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import util.Paging;
import Dao.UserDao;
import Models.User;

/**************************
* 说明：    排位控制器
***************************
* 类名：    RankController
* 包名：    Controllers
***************************/
@Controller
public class RankController {
	@Autowired
	private UserDao userDao;
	private static List<User> list;
	
	/**************************************************
	 * 限定符：	公开
	 * 说明：	跳转排位页面
	 * 方法名：	index
	 **************************************************
	 * 参数表：
	 * @param 	request		通过链接/rank
	 * @return 	String		跳转到rank.jsp
	 **************************************************/
	@RequestMapping(value="/rank")
	public String index(HttpServletRequest request) {
		int currentPage = 1;
		if (list == null) {
			list = userDao.getRank500();
		}
		List<User> pageList = (List<User>)Paging.ByList(list, 10, currentPage);
		request.setAttribute("list", pageList);
		return "rank";
	}
	
	
	/**************************************************
	 * 限定符：	公开
	 * 说明：	通过指定页面的分页内容
	 * 方法名：	getRankByCurrentPage
	 **************************************************
	 * 参数表：
	 * @param 	request			通过链接/getRankByCurrentPage?currentPage=
	 * @param 	currentPage		指定页面
	 * @return 	String			跳转rank.jsp
	 **************************************************/
	@RequestMapping(value="/getRankByCurrentPage")
	public String getRankByCurrentPage(HttpServletRequest request, int currentPage) {
		if (list == null) {
			List<User> list = userDao.getRank500();
		}
  		currentPage = Integer.parseInt(request.getParameter("currentPage"));
		List<User> pageList = (List<User>)Paging.ByList(list, 10, currentPage);
		request.setAttribute("list", pageList);
		return "rank";
	}
}
