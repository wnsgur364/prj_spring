package com.mycompany.app.infra.modules.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping(value = "/home")
	public String home() {
		return "/home";
	}
	
}