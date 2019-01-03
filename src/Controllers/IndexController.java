package Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**************************
* 说明：    主页控制器
***************************
* 类名：    IndexController
* 包名：    Controllers
***************************/
@Controller
public class IndexController {
	
	/**************************************************
	 * 限定符：	公开
	 * 说明：	跳转主页页面
	 * 方法名：	index
	 **************************************************
	 * 参数表：
	 * @return 	String	跳转到index.jsp
	 **************************************************/
	@RequestMapping(value="/index")
	public String index() {
		return "index";
	}

}
