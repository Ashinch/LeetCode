package Controllers;

import java.io.File;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import Dao.UserDao;
import Models.User;


@Controller
public class UserController {
	@Autowired
	private UserDao userDao;
	
	
	/**************************************************
	 * 限定符：	公开
	 * 说明：	跳转登录页面
	 * 方法名：	goLogin
	 **************************************************
	 * 参数表：
	 * @return 	String
	 **************************************************/
	@RequestMapping(value="/login")
	public String goLogin() {
		return "login";
	}
	
	@RequestMapping(value="/userinfo")
	public String goUserInfo() {
		return "userinfo";
	}
	
	@RequestMapping(value="/loginCheck")
	public String loginCheck(HttpServletRequest request) {
		String result = "fail";
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		User user = userDao.getUserByName(username);
		if (user != null) {
			if (password.equals(user.getPassword())) {
				request.getSession().setAttribute("user", user);
				return "index";
			}
		}
		
		return null;
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
	
	@RequestMapping(value="/userface")
    public String  setUserface(HttpServletRequest request) throws Exception {
         //将当前上下文初始化给  CommonsMutipartResolver （多部分解析器）
        CommonsMultipartResolver multipartResolver=new CommonsMultipartResolver(request.getSession().getServletContext());
	
        //检查form中是否有enctype="multipart/form-data"
        if(multipartResolver.isMultipart(request)){
            //将request变成多部分request
            MultipartHttpServletRequest multiRequest=(MultipartHttpServletRequest)request;
           //获取multiRequest 中所有的文件名
            Iterator iter=multiRequest.getFileNames();

            while(iter.hasNext()) {
                //一次遍历所有文件
                MultipartFile file=multiRequest.getFile(iter.next().toString());
                if(file!=null){
                	//文件路径
                    String path=request.getSession().getServletContext().getRealPath("/") + file.getOriginalFilename();
                    //上传 request.getSession().getServletContext().getContextPath()
                    file.transferTo(new File(path));
                }
            }
        }
        return "success"; 
    }
}
