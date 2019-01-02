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
	
	@RequestMapping(value="/discovery")
	public String index(HttpServletRequest request) {
		List<Course> list = courseDao.getAllCourse();
		request.setAttribute("list", list);
		
		return "discovery";
	}
	
	@RequestMapping(value="/getCourseByClass")
	public String getCourseByClass(HttpServletRequest request,String classify) {
		List<Course> list = courseDao.getAllCourseByClass(classify);
		request.setAttribute("list", list);
		
		return "discovery";
	}
	
}
