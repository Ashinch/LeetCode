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
* ˵����    ̽��������
***************************
* ������    DiscoveryController
* ������    Controllers
***************************/
@Controller
public class DiscoveryController {
	@Autowired
	private CourseDao courseDao;
	
	
	/**************************************************
	 * �޶�����	����
	 * ˵����	��ת̽��ҳ��
	 * ��������	index
	 **************************************************
	 * ������
	 * @param 	request
	 * @return 	String	��ת��discovery.jsp
	 **************************************************/
	@RequestMapping(value="/discovery")
	public String index(HttpServletRequest request) {
		List<Course> list = courseDao.getAllCourse();
		request.setAttribute("list", list);
		return "discovery";
	}
	
	
	/**************************************************
	 * �޶�����	����
	 * ˵����	ͨ������ȡ�γ���Ƶ�б�
	 * ��������	getCourseByClass
	 **************************************************
	 * ������
	 * @param 	request		ͨ������/getCourseByClass?classify=
	 * @param 	classify	ָ���γ���Ƶ���
	 * @return 	String		��ת��discovery.jsp
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
