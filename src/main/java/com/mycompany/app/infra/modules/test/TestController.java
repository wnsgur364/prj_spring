package com.mycompany.app.infra.modules.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

	
	@RequestMapping("/tables")
	public String tables() {
		return "/modules/tables";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "/modules/login";
	}
	
	@RequestMapping("/forms")
	public String forms() {
		return "/modules/forms";
	}
	
	@RequestMapping("/profile")
	public String profile() {
		return "/modules/profile";
	}
	
	@RequestMapping("/reset-password")
	public String resetPassword() {
		return "/modules/reset-password";
	}
	
	@RequestMapping("/calendar")
	public String calendar() {
		return "/modules/calendar";
	}
}
