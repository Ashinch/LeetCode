package Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**************************
 * 说明： 社区控制器
 *************************** 
 * 类名： CommunityController 
 * 包名： Controllers
 ***************************/
@Controller
public class CommunityController {
	
	/**************************************************
	 * 限定符：	公开
	 * 说明：	跳转社区页面
	 * 方法名：	index
	 **************************************************
	 * 参数表：
	 * @return 	String	跳转到community.jsp
	 **************************************************/
	@RequestMapping(value = "/community")
	public String index() {
		return "community";
	}
}
