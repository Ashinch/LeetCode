package Controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import Dao.UserDao;
import Models.User;

@Controller
public class RankController {
	@Autowired
	private UserDao userDao;
	
	@RequestMapping(value="/rank")
	public String index(HttpServletRequest request) {
		List<User> list = userDao.getRank500();
		request.setAttribute("list", list);
		
		return "rank";
	}
}
