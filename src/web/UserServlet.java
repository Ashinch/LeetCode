package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.UserDao;
import domain.UserBean;


/**************************
* ˵����    �û�servlet��
***************************
* ������    UserServlet
* ������    web
***************************/
@SuppressWarnings("serial")
public class UserServlet extends BaseServlet {
	
	/**************************************************
	 * �޶�����	����
	 * ˵����	��¼����
	 * ��������	login
	 **************************************************
	 * ������
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException 	void
	 **************************************************/
	public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if (UserDao.loginUser(username,password)) {
			//  ��½�ɹ�
			
			System.out.println("��¼�ɹ�");
		}else {
			//  ��¼ʧ��
			
		}
	}
	
	
	/**************************************************
	 * �޶�����	����
	 * ˵����	ע�᷽��
	 * ��������	register
	 **************************************************
	 * ������
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
			//  ע��ɹ�
		}else {
			//  ע��ʧ��
		}
	}
}
