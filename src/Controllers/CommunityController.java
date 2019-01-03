package Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**************************
 * ˵���� ����������
 *************************** 
 * ������ CommunityController 
 * ������ Controllers
 ***************************/
@Controller
public class CommunityController {
	
	/**************************************************
	 * �޶�����	����
	 * ˵����	��ת����ҳ��
	 * ��������	index
	 **************************************************
	 * ������
	 * @return 	String	��ת��community.jsp
	 **************************************************/
	@RequestMapping(value = "/community")
	public String index() {
		return "community";
	}
}
