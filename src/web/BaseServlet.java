package web;

import java.io.IOException;
import java.lang.reflect.Method;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**************************
* 说明：    Servlet基类
***************************
* 类名：    BaseServlet
* 包名：    web
***************************/
@SuppressWarnings("serial")
public class BaseServlet extends HttpServlet {
	
	/**************************************************
	 * 限定符：	重写 公开
	 * 说明：	Get方式处理事件
	 * 方法名：	doGet
	 **************************************************
	 * 参数表：
	 * @param request 				请求类
	 * @param response 				响应类
	 * @throws ServletException 	servlet异常
	 * @throws IOException 			io异常
	 **************************************************/
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		try {
		//  url：UserServlet?do=方法名
			String methodName = request.getParameter("do");
			
			//  利用反射跳转至方法：UserServlet?do=login
			Class<? extends BaseServlet> clazz = this.getClass();
			Method method = clazz.getMethod(methodName, HttpServletRequest.class, HttpServletResponse.class);
			method.invoke(this, request,response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	/**************************************************
	 * 限定符：	重写 公开
	 * 说明：	Post方式处理事件
	 * 方法名：	doPost
	 **************************************************
	 * 参数表：
	 * @param request 				请求类
	 * @param response 				响应类
	 * @throws ServletException 	servlet异常
	 * @throws IOException 			io异常
	 **************************************************/
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		try {
			//  url：UserServlet?do=方法名
			String methodName = request.getParameter("do");
			
			//  利用反射跳转至方法：UserServlet?do=login
			Class<? extends BaseServlet> clazz = this.getClass();
			Method method = clazz.getMethod(methodName, HttpServletRequest.class, HttpServletResponse.class);
			method.invoke(this, request,response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
