package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.UserDao;
import domain.UserBean;

//  ÓÃ»§Servlet
@SuppressWarnings("serial")
public class UserServlet extends BaseServlet {
	
	//  µÇÂ¼
	public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if (UserDao.loginUser(username,password)) {
			//  µÇÂ½³É¹¦
		}else {
			//  µÇÂ¼Ê§°Ü
		}
	}
	
	//  ×¢²á
	public void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserBean user = new UserBean();
		user.setUsername(request.getParameter("username"));
		user.setPassword(request.getParameter("password"));
		
		if (UserDao.addUser(user)) {
			//  ×¢²á³É¹¦
		}else {
			//  ×¢²áÊ§°Ü
		}
	}
}
