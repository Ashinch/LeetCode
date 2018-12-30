package Controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import Dao.UserDao;
import Models.User;

@Controller
public class HomeController {
	@Autowired
	private UserDao userDao;
	
	@RequestMapping(value="/home")
	public String goHome(HttpServletRequest request) {
		
		List<User> list = userDao.getRank500();
		request.setAttribute("list", list);
		
		return "home";
	}

}
