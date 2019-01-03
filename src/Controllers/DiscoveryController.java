package Controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import Dao.CourseDao;
import Dao.UserDao;
import Models.Course;

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
	 **************************************************/
	@RequestMapping(value="/getCourseByClass")
	public String getCourseByClass(HttpServletRequest request,String classify) {
		List<Course> list = courseDao.getAllCourseByClass(classify);
		request.setAttribute("list", list);
		return "discovery";
	}
	
}
