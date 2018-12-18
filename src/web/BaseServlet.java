package web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public abstract class BaseServlet extends HttpServlet {

	public void init() throws ServletException {
		// Put your code here
	}
	
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	protected abstract void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException;

	protected abstract void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException;

}
