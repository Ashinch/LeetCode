package Controllers;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import Dao.UserDao;
import Models.User;


@Controller
public class UserController {
	@Autowired
	private UserDao userDao;
	
	@RequestMapping(value="/login")
	public String goLogin() {
		return "login";
	}
	
	@RequestMapping(value="/loginCheck")
	public String loginCheck(HttpServletRequest request) {
		String result = "fail";
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		User user = userDao.getUserByName(username);
		if (user != null) {
			if (password.equals(user.getPassword())) {
				result = "success";
			}
		}
		
		
		request.setAttribute("result", result + " " + username);
		return "success";
	}
	
	@RequestMapping(value="/reg")
	public String goReg() {
		return "reg";
	}
	
	@RequestMapping(value="/regCheck")
	public String goRegCheck(HttpServletRequest request) {
		String result = "fail";
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		
		if (userDao.addUser(user) > 0){
			result = "success";
		}
		
		
		request.setAttribute("result", result + " " + username);
		return "success";
	}
	
	@RequestMapping(value="/getUserById")
	public String getUserById(HttpServletRequest request,int id) {
		User user = userDao.getUserById(id);
		request.setAttribute("user", user);
		return "detail";
	}
	
	@RequestMapping(value="/updateUser")
	public String getUpdateUser(HttpServletRequest request) {
		String result = "fail";
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String id = request.getParameter("id");
		String rank = request.getParameter("rank");
		
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setId(Integer.valueOf(id));
		user.setRank(Integer.valueOf(rank));
		
		if (userDao.updateUser(user) > 0){
			result = "success";
		}
		
		
		request.setAttribute("result", result + " " + username);
		return "success";
	}
}
