package Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContestController {
	@RequestMapping(value="/contest")
	public String index() {
		return "contest";
	}
}
