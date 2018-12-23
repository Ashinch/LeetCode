package web;

import java.io.IOException;
import java.lang.reflect.Method;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**************************
* ˵����    Servlet����
***************************
* ������    BaseServlet
* ������    web
***************************/
@SuppressWarnings("serial")
public class BaseServlet extends HttpServlet {
	
	/**************************************************
	 * �޶�����	��д ����
	 * ˵����	Get��ʽ�����¼�
	 * ��������	doGet
	 **************************************************
	 * ������
	 * @param request 				������
	 * @param response 				��Ӧ��
	 * @throws ServletException 	servlet�쳣
	 * @throws IOException 			io�쳣
	 **************************************************/
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		try {
		//  url��UserServlet?do=������
			String methodName = request.getParameter("do");
			
			//  ���÷�����ת��������UserServlet?do=login
			Class<? extends BaseServlet> clazz = this.getClass();
			Method method = clazz.getMethod(methodName, HttpServletRequest.class, HttpServletResponse.class);
			method.invoke(this, request,response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	/**************************************************
	 * �޶�����	��д ����
	 * ˵����	Post��ʽ�����¼�
	 * ��������	doPost
	 **************************************************
	 * ������
	 * @param request 				������
	 * @param response 				��Ӧ��
	 * @throws ServletException 	servlet�쳣
	 * @throws IOException 			io�쳣
	 **************************************************/
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		try {
			//  url��UserServlet?do=������
			String methodName = request.getParameter("do");
			
			//  ���÷�����ת��������UserServlet?do=login
			Class<? extends BaseServlet> clazz = this.getClass();
			Method method = clazz.getMethod(methodName, HttpServletRequest.class, HttpServletResponse.class);
			method.invoke(this, request,response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
