package Controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import sun.misc.Sort;
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
	private static List<User> mList;
	public static List<User> mPageList;
	
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
		if (mList == null) {
			mList = userDao.getRank500();
		}
		mPageList = Paging.ByUser(mList, 10, currentPage);
		request.setAttribute("list", mPageList);
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
		if (mList == null) {
			@SuppressWarnings("unused")
			List<User> list = userDao.getRank500();
		}
  		currentPage = Integer.parseInt(request.getParameter("currentPage"));
  		mPageList = (List<User>)Paging.ByUser(mList, 10, currentPage);
		request.setAttribute("list", mPageList);
		return "rank";
	}
	
	@RequestMapping(value = "/ajaxSort")
	public void addReply(HttpServletRequest request,HttpServletResponse response) throws IOException {
		int method = Integer.valueOf(request.getParameter("method"));
		mPageList = shorList(mPageList,method);
		
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().print(toHtml(mPageList));
	}
	
	private String toHtml(List<User> list) {
		String html = "";
		for (int i = 0; i < list.size(); i++) {
			
			if(i % 2 == 0){
      			html += "<tr class=\"gray\">";
      		}
      		else{
      			html += "<tr class=\"black\">";
      		}
			
			html += "<td id=\"reduce\">" + Integer.toString(i + 1) +"</td>" + 
					"<td id=\"item1\">" + list.get(i).getUsername() + "</td>" + 
					"<td id=\"item2\">" + list.get(i).getCountry() + "</td>" + 
					"<td id=\"item3\">" + list.get(i).getRank() + "</td>" + 
					"<td id=\"item4\">" + list.get(i).getPoints() + "</td>" + 
					"<td id=\"item5\">" + list.get(i).getWeekly_win() + "</td>" + 
					"<td id=\"item6\">" + list.get(i).getWeekly_count() + "</td>" + 
					"<td id=\"item7\">" + list.get(i).getWeekly_count() + "</td>" + 
					"</tr>";
		}
		return html;
	}
	
	private List<User> shorList(List<User> list,int method) {
		switch (method) {
		case 1:
			for(int i=0;i<list.size()-1;i++){
				for(int j=0;j<list.size()-1-i;j++){
					if(Integer.valueOf(list.get(j).getRank()) < Integer.valueOf(list.get(j + 1).getRank())){
						User user = list.get(j);
						list.set(j, list.get(j + 1));
						list.set(j + 1, user);
					}
				}
			}
			break;
			
		case 2:
			for(int i=0;i<list.size()-1;i++){
				for(int j=0;j<list.size()-1-i;j++){
					if(Integer.valueOf(list.get(j).getPoints()) < Integer.valueOf(list.get(j + 1).getPoints())){
						User user = list.get(j);
						list.set(j, list.get(j + 1));
						list.set(j + 1, user);
					}
				}
			}
			break;
			
		case 3:
			for(int i=0;i<list.size()-1;i++){
				for(int j=0;j<list.size()-1-i;j++){
					if(Integer.valueOf(list.get(j).getWeekly_win()) < Integer.valueOf(list.get(j + 1).getWeekly_win())){
						User user = list.get(j);
						list.set(j, list.get(j + 1));
						list.set(j + 1, user);
					}
				}
			}
			break;

		case 4:
			for(int i=0;i<list.size()-1;i++){
				for(int j=0;j<list.size()-1-i;j++){
					if((list.get(j).getWeekly_count() - list.get(j).getWeekly_win()) <
							(list.get(j + 1).getWeekly_count() - list.get(j + 1).getWeekly_win())){
						User user = list.get(j);
						list.set(j, list.get(j + 1));
						list.set(j + 1, user);
					}
				}
			}
			break;
			
		case 5:
			for(int i=0;i<list.size()-1;i++){
				for(int j=0;j<list.size()-1-i;j++){
					if(Integer.valueOf(list.get(j).getWeekly_count()) < Integer.valueOf(list.get(j + 1).getWeekly_count())){
						User user = list.get(j);
						list.set(j, list.get(j + 1));
						list.set(j + 1, user);
					}
				}
			}
			break;

		default:
			break;
		}
		
		
		return list;
	}
	
	@RequestMapping(value = "/ajaxGetCountry")
	public void ajaxGetCountry(HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		List<User> list = userDao.getRank10FromChina();
		
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().print(toHtml(list));
	}
}
