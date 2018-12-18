package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import domain.UserBean;

public class UserServlet extends BaseServlet {
	
	public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if (UserDao.loginUser(username,password)) {
			//  ��½�ɹ�
		}else {
			//  ��¼ʧ��
		}
	}
	
	public void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserBean user = new UserBean();
		user.setUsername(request.getParameter("username"));
		user.setPassword(request.getParameter("password"));
		
		if (UserDao.addUser(user)) {
			//  ע��ɹ�
		}else {
			//  ע��ʧ��
		}
	}
}
