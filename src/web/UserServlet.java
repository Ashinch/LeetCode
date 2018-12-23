package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.UserDao;
import domain.UserBean;


/**************************
* 说明：    用户servlet类
***************************
* 类名：    UserServlet
* 包名：    web
***************************/
@SuppressWarnings("serial")
public class UserServlet extends BaseServlet {
	
	/**************************************************
	 * 限定符：	公开
	 * 说明：	登录方法
	 * 方法名：	login
	 **************************************************
	 * 参数表：
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException 	void
	 **************************************************/
	public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if (UserDao.loginUser(username,password)) {
			//  登陆成功
			
			System.out.println("登录成功");
		}else {
			//  登录失败
			
		}
	}
	
	
	/**************************************************
	 * 限定符：	公开
	 * 说明：	注册方法
	 * 方法名：	register
	 **************************************************
	 * 参数表：
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException 	void
	 **************************************************/
	public void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserBean user = new UserBean();
		user.setUsername(request.getParameter("username"));
		user.setPassword(request.getParameter("password"));
		
		if (UserDao.addUser(user)) {
			//  注册成功
		}else {
			//  注册失败
		}
	}
}
