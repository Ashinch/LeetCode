package Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**************************
* ˵����    ��ҳ������
***************************
* ������    IndexController
* ������    Controllers
***************************/
@Controller
public class IndexController {
	
	/**************************************************
	 * �޶�����	����
	 * ˵����	��ת��ҳҳ��
	 * ��������	index
	 **************************************************
	 * ������
	 * @return 	String	��ת��index.jsp
	 **************************************************/
	@RequestMapping(value="/index")
	public String index() {
		return "index";
	}

}
