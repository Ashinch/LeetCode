package Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DiscoveryController {
	@RequestMapping(value="/discovery")
	public String index() {
		return "discovery";
	}
}
