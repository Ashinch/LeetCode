package Controllers;

import java.util.List;
import javax.jms.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.AbstractDocument.Content;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import Dao.PaperDao;
import Dao.UserDao;
import Models.Paper;
import Models.User;

/**************************
* ˵����    ����������
***************************
* ������    ContestController
* ������    Controllers
***************************/
@Controller
public class ContestController {
	@Autowired
	private UserDao userDao;
	@Autowired
	private PaperDao paperDao;
	
	
	/**************************************************
	 * �޶�����	����
	 * ˵����	��ת����ҳ��
	 * ��������	index
	 **************************************************
	 * ������
	 * @return 	String	��ת��contest.jsp
	 **************************************************/
	@RequestMapping(value="/contest")
	public String index() {
		return "contest";
	}
	
	
	/**************************************************
	 * �޶�����	����
	 * ˵����	��ת����ҳ��
	 * ��������	answer
	 **************************************************
	 * ������
	 * @param 	request
	 * @return 	String		��ת��answer.jsp
	 **************************************************/
	@RequestMapping(value="/answer")
	public String answer(HttpServletRequest request) {
		List<Paper> list = paperDao.getAllPaper();
		request.setAttribute("list", list);
		return "answer";
	}
	
	
	/**************************************************
	 * �޶�����	����
	 * ˵����	����ɼ������û���Ϣ����ת���ҳ��
	 * ��������	settlement
	 **************************************************
	 * ������
	 * @param 	request		ͨ������/settlement?correct=
	 * @param 	correct		��ȷ������
	 * @return 	String		��תsettlement.jsp
	 **************************************************/
	@RequestMapping(value="/settlement")
	public String settlement(HttpServletRequest request, int correct) {
		int wrong = 10 - correct;
		User user = (User) request.getSession().getAttribute("user");
		user.setWeekly_count(user.getWeekly_count() + 1);
		request.setAttribute("correct", correct);
		request.setAttribute("rank", "none");
		if (correct >= 5) {
			user.setWeekly_win(user.getWeekly_win() +1);
			request.setAttribute("score", "victory");
			int points = user.getPoints() + correct - wrong;
			if (points >= 100) {
				user.setPoints(0 + points);
				user.setRank(user.getRank() + 1);
				request.setAttribute("rank", "up");
			}else {
				user.setPoints(user.getPoints() + correct);
			}
		}else {
			request.setAttribute("score", "defeat");
			int points = user.getPoints() + correct - wrong;
			if (points <= 0) {
				user.setPoints(100 + points);
				user.setRank(user.getRank() - 1);
				request.setAttribute("rank", "down");
			}else {
				user.setPoints(user.getPoints() + points);
			}
		}
		userDao.updateUser(user);
		return "settlement";
	}
	
	
	@RequestMapping(value="/ajaxContent")
	@ResponseBody
	public String ajaxContent(HttpServletRequest request,HttpServletResponse response) {
		response.setContentType("text/html;charset=utf-8"); 
		return "�ɹ���";
	}
	
}
