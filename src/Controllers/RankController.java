package Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RankController {
	@RequestMapping(value="/rank")
	public String index() {
		return "rank";
	}
}
