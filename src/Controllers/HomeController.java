package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	@RequestMapping(value="/ajax")
	public String goAjax() {
		return "ajax";
	}
	
	@RequestMapping(value="/ajaxSend")
	public void ajaxSend(HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		
		response.getWriter().print("异步传输成功！" + request.getParameter("num"));
	}

}
