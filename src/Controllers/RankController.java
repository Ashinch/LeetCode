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
* ˵����    ��λ������
***************************
* ������    RankController
* ������    Controllers
***************************/
@Controller
public class RankController {
	@Autowired
	private UserDao userDao;
	private static List<User> mList;
	
	/**************************************************
	 * �޶�����	����
	 * ˵����	��ת��λҳ��
	 * ��������	index
	 **************************************************
	 * ������
	 * @param 	request		ͨ������/rank
	 * @return 	String		��ת��rank.jsp
	 **************************************************/
	@RequestMapping(value="/rank")
	public String index(HttpServletRequest request) {
		int currentPage = 1;
		if (mList == null) {
			mList = userDao.getRank500();
		}
//		List<User> pageList = Paging.ByUser(mList, 10, currentPage);
//		request.setAttribute("list", pageList);
		return "rank";
	}
	
	
	/**************************************************
	 * �޶�����	����
	 * ˵����	ͨ��ָ��ҳ��ķ�ҳ����
	 * ��������	getRankByCurrentPage
	 **************************************************
	 * ������
	 * @param 	request			ͨ������/getRankByCurrentPage?currentPage=
	 * @param 	currentPage		ָ��ҳ��
	 * @return 	String			��תrank.jsp
	 **************************************************/
	@RequestMapping(value="/getRankByCurrentPage")
	public String getRankByCurrentPage(HttpServletRequest request, int currentPage) {
		if (mList == null) {
			@SuppressWarnings("unused")
			List<User> list = userDao.getRank500();
		}
  		currentPage = Integer.parseInt(request.getParameter("currentPage"));
		List<User> pageList = (List<User>)Paging.ByUser(mList, 10, currentPage);
		request.setAttribute("list", pageList);
		return "rank";
	}
}
