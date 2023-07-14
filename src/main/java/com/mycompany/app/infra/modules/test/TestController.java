package com.mycompany.app.infra.modules.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

	
	@RequestMapping("/tables")
	public String tables() {
		return "/modules/tables";
	}
	
	@RequestMapping("/forms")
	public String forms() {
		return "/modules/forms";
	}
	
	@RequestMapping("/calendar")
	public String calendar() {
		return "/modules/calendar";
	}
}
