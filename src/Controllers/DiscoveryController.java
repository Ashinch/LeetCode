package Controllers;

import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import util.StrFormat;

import Dao.CourseDao;
import Dao.UserDao;
import Models.Course;

/**************************
* 说明：    探索控制器
***************************
* 类名：    DiscoveryController
* 包名：    Controllers
***************************/
@Controller
public class DiscoveryController {
	@Autowired
	private CourseDao courseDao;
	
	
	/**************************************************
	 * 限定符：	公开
	 * 说明：	跳转探索页面
	 * 方法名：	index
	 **************************************************
	 * 参数表：
	 * @param 	request
	 * @return 	String	跳转到discovery.jsp
	 **************************************************/
	@RequestMapping(value="/discovery")
	public String index(HttpServletRequest request) {
		List<Course> list = courseDao.getAllCourse();
		request.setAttribute("list", list);
		return "discovery";
	}
	
	
	/**************************************************
	 * 限定符：	公开
	 * 说明：	通过类别获取课程视频列表
	 * 方法名：	getCourseByClass
	 **************************************************
	 * 参数表：
	 * @param 	request		通过链接/getCourseByClass?classify=
	 * @param 	classify	指定课程视频类别
	 * @return 	String		跳转到discovery.jsp
	 * @throws IOException 
	 **************************************************/
	@RequestMapping(value="/getCourseByClass")
	public void getCourseByClass(HttpServletRequest request, HttpServletResponse response) throws IOException {
		List<Course> list = courseDao.getAllCourseByClass(request.getParameter("classify"));
		String html = "";
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).getTitle());
			html += "<div id=\"listitem\"  onclick=\"play()\"><div class=\"listtop\"><img alt=\"\" src=\"" + list.get(i).getImage() + "\" width=\"250px\" height=\"160px;\"></div><div class=\"listbottom\"><p class=listtext>" + StrFormat.maxLength(list.get(i).getTitle(),40) + "</p></div></div>";
		}
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().print(html);
	}
	
	
	@RequestMapping(value="/getCourseByName")
	public void getCourseByName(HttpServletRequest request,HttpServletResponse response) throws IOException {
		List<Course> list = courseDao.getAllCourseByName("%" + request.getParameter("name") + "%");
		System.out.println(list.get(0).getTitle());
		String html = "";
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).getTitle());
			html += "<div id=\"listitem\"  onclick=\"play()\"><div class=\"listtop\"><img alt=\"\" src=\"" + list.get(i).getImage() + "\" width=\"250px\" height=\"160px;\"></div><div class=\"listbottom\"><p class=listtext>" + StrFormat.maxLength(list.get(i).getTitle(),40) + "</p></div></div>";
		}
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().print(html);
	}
}
