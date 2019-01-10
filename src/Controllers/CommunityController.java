package Controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import util.Paging;

import Dao.ReplyDao;
import Dao.ThemeDao;
import Dao.UserDao;
import Models.Reply;
import Models.Theme;
import Models.User;

/**************************
 * 说明： 社区控制器
 *************************** 
 * 类名： CommunityController 
 * 包名： Controllers
 ***************************/
@Controller
public class CommunityController {
	@Autowired
	private ThemeDao themeDao;
	@Autowired
	private UserDao userDao;
	@Autowired
	private ReplyDao replyDao;
	
	/**************************************************
	 * 限定符：	公开
	 * 说明：	跳转社区页面
	 * 方法名：	index
	 **************************************************
	 * 参数表：
	 * @return 	String	跳转到community.jsp
	 **************************************************/
	@RequestMapping(value = "/community")
	public String index(HttpServletRequest request) {
		int currentPage = 1;
		List<Theme> List = (List<Theme>) themeDao.getAllTheme();
		List<Theme> pageList = Paging.ByTheme(List, 6, currentPage);
		List<String> faces = new ArrayList<String>();
		for (int i = 0; i < pageList.size(); i++) {
			faces.add(userDao.getFaceById(pageList.get(i).getSender()));
		}
		
		request.setAttribute("list", pageList);
		request.setAttribute("faces", faces);
		return "community";
	}
	
	@RequestMapping(value = "/goPage")
	public String index(HttpServletRequest request,int currentPage) {
		List<Theme> List = (List<Theme>) themeDao.getAllTheme();
		List<Theme> pageList = Paging.ByTheme(List, 6, currentPage);
		List<String> faces = new ArrayList<String>();
		for (int i = 0; i < pageList.size(); i++) {
			faces.add(userDao.getFaceById(pageList.get(i).getSender()));
		}

		request.setAttribute("list", pageList);
		request.setAttribute("faces", faces);
		return "community";
	}
	
	@RequestMapping(value = "/addTheme")
	public void addTheme(HttpServletRequest request,HttpServletResponse response) throws IOException {
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		User user = (User)request.getSession().getAttribute("user");
		Theme theme = new Theme();
		theme.setClassify(null);
		theme.setTitle(title);
		theme.setContents(content);
		theme.setSender(user.getId());
		theme.setWatch(3);
		theme.setComment(0);
		theme.setReply_date("刚刚");
		theme.setDate("2019-1-11");
		themeDao.addTheme(theme);
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().print("ok");
	}
	
	@RequestMapping(value = "/getReply")
	public void getReply(HttpServletRequest request,HttpServletResponse response) throws IOException {
		int themeId = Integer.valueOf(request.getParameter("id"));
		List<Reply> list = replyDao.getAllReplyByThemeId(themeId);
		int senderId = themeDao.getThemeById(themeId).getSender();
		String senderName = userDao.getUserById(themeDao.getThemeById(themeId).getSender()).getUsername();
		String themeContent = themeDao.getThemeById(themeId).getContents();
		String themeTitle = themeDao.getThemeById(themeId).getTitle();
		
		String html = "<div id=\"item\">" +
					  "<img src=\"" + userDao.getFaceById(senderId) + "\" />" + 
					  "<p id=name>" + senderName + "</p>" + 
					  "<p id=\"level\">VII</p>" + 
					  "<p id=\"line\"></p>" + 
					  "<p id=\"problem\">" + themeContent + "</p>" +
					  "<p id=\"storey\"># 1</p>" +
					  "</div>";
		
		for (int i = 0; i < list.size(); i++) {
			html += "<div id=\"item\">" +
					"<img src=\"" + userDao.getFaceById(list.get(i).getSender()) + "\" />" + 
					"<p id=name>" + userDao.getUserById(list.get(i).getSender()).getUsername() + "</p>" + 
					"<p id=\"level\">VII</p>" + 
					"<p id=\"line\"></p>" + 
					"<p id=\"problem\">" + list.get(i).getContents() + "</p>" +
					"<p id=\"storey\"># " + list.get(i).getSequence() +"</p>" +
					"</div>";
		}
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().print(html + "$$" + themeTitle);
	}
	
	@RequestMapping(value = "/addReply")
	public void addReply(HttpServletRequest request,HttpServletResponse response) throws IOException {
		int themeId = Integer.valueOf(request.getParameter("id"));
		List<Reply> replyList = replyDao.getAllReplyByThemeId(themeId);
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		User user = (User)request.getSession().getAttribute("user");
		
		Reply reply = new Reply();
		reply.setContents(content);
		reply.setDate(null);
		reply.setSender(user.getId());
		reply.setSequence(replyList.size() + 2);
		reply.setTheme(themeId);
		
		replyDao.addReply(reply);
		
		
		List<Reply> list = replyDao.getAllReplyByThemeId(themeId);
		int senderId = themeDao.getThemeById(themeId).getSender();
		String senderName = userDao.getUserById(themeDao.getThemeById(themeId).getSender()).getUsername();
		String themeContent = themeDao.getThemeById(themeId).getContents();
		String themeTitle = themeDao.getThemeById(themeId).getTitle();
		
		String html = "<div id=\"item\">" +
					  "<img src=\"" + userDao.getFaceById(senderId) + "\" />" + 
					  "<p id=name>" + senderName + "</p>" + 
					  "<p id=\"level\">VII</p>" + 
					  "<p id=\"line\"></p>" + 
					  "<p id=\"problem\">" + themeContent + "</p>" +
					  "<p id=\"storey\"># 1</p>" +
					  "</div>";
		
		for (int i = 0; i < list.size(); i++) {
			html += "<div id=\"item\">" +
					"<img src=\"" + userDao.getFaceById(list.get(i).getSender()) + "\" />" + 
					"<p id=name>" + userDao.getUserById(list.get(i).getSender()).getUsername() + "</p>" + 
					"<p id=\"level\">VII</p>" + 
					"<p id=\"line\"></p>" + 
					"<p id=\"problem\">" + list.get(i).getContents() + "</p>" +
					"<p id=\"storey\"># " + list.get(i).getSequence() +"</p>" +
					"</div>";
		}
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().print(html);
	}
}
